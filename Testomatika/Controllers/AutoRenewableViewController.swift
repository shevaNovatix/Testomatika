//
//  ConsumableViewController.swift
//   TestomatikaTest
//
//  Created by Admin on 08.06.2021.
//

import UIKit
import StoreKit
import Firebase
import FBSDKCoreKit
import SwiftyStoreKit
import JGProgressHUD

class AutoRenewableViewController: MainViewController {
     
    @IBOutlet weak var purchaseButton: MainButton!
    @IBOutlet weak var restorePurchaseButton: UIButton!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var subscribeLabel: UILabel!
    
    private let userDefaults = UserDefaultsManager.shared
    
    private var productID: String {
        RemoteConfigService.shared.string(forKey: .subscriptionProduct)
    }

    private var product: SKProduct? {
        if let product = IAPManager.shared.products.filter({ $0.productIdentifier == self.productID }).first {
            return product
        }
        return nil
    }
    
    private func configureRestoreButton() {
        restorePurchaseButton.backgroundColor = .clear
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.attributedText = NSAttributedString.textViewText()
        textView.linkTextAttributes = NSAttributedString.linkAttributes()
        
        subscribeLabel.addShadow()
        descriptionLabel.addShadow()
    
        AppEvents.logEvent(.initiatedCheckout)
        Analytics.logEvent("initiatedCheckout", parameters: nil)
        
        configureUI()
    }
    
    private func configureUI() {
        if let product = product {
            configureButtons(product: product)
            descriptionLabel.isHidden = false
        } else {
            buttonsIsHidden(true)
        }
    }
    
    // MARK: - Actions
    
    @IBAction func purchaseButtonAction() {
        showSpiner()
        SwiftyStoreKit.purchaseProduct(productID, atomically: true) { [weak self] result in
            guard let self = self else { return }
            if case .success(let purchase) = result {
                
                self.logEvents()
                self.userDefaults.isSubscription = true
                
                if purchase.needsFinishTransaction {
                    SwiftyStoreKit.finishTransaction(purchase.transaction)
                }
                
                let appleValidator = AppleReceiptValidator(service: .production, sharedSecret: "5bc31f560bc249ddbff514b174635567")
                SwiftyStoreKit.verifyReceipt(using: appleValidator) { [weak self ] result in
                    guard let self = self else { return }
                    if case .success(let receipt) = result {
                        
                        let purchaseResult = SwiftyStoreKit.verifySubscription(
                            ofType: .autoRenewable,
                            productId: self.productID,
                            inReceipt: receipt)
                        
                        switch purchaseResult {
                        case .purchased(let expiryDate, _):
                            UserDefaultsManager.shared.isSubscription = true
                            UserDefaultsManager.shared.expiryDate = expiryDate
                            print("EXPIRY DATE -----------\(expiryDate)")
                        case .notPurchased, .expired(_, _):
                            break
                        }
                    }
                }
                
                self.hideSpiner()
                self.pushToResultVC()
            } else if case .error(let error) = result {
                self.hideSpiner()
                
                switch error.code {
                case .unknown:
                    self.showAlert(title: "Error", message: "Unknown error. Please contact support")
                case .clientInvalid:
                    self.showAlert(title: "Error", message: "Not allowed to make the payment")
                case .paymentCancelled:
                    break
                case .paymentInvalid:
                    self.showAlert(title: "Error", message: "The purchase identifier was invalid")
                case .paymentNotAllowed:
                    self.showAlert(title: "Error", message: "The device is not allowed to make the payment")
                case .storeProductNotAvailable:
                    self.showAlert(title: "Error", message: "The product is not available in the current storefront")
                case .cloudServicePermissionDenied:
                    self.showAlert(title: "Error", message: "Access to cloud service information is not allowed")
                case .cloudServiceNetworkConnectionFailed:
                    self.showAlert(title: "Error", message: "Could not connect to the network")
                case .cloudServiceRevoked: print("User has revoked permission to use this cloud service")
                default:
                    print((error as NSError).localizedDescription)
                }
            }
        }
    }
    
    @IBAction func restorePurchaseAction() {
        showSpiner()
        
        IAPManager.shared.verifySubscription(productID: productID) { [weak self] result in
            guard let self = self else { return }
            self.hideSpiner()
            
            switch result {
            case .success(_):
                self.pushToResultVC()
            case .failure(let error):
                self.showAlert(title: "Error", message: error.localizedDescription)
            }
        }
    }
    
    @IBAction func dismissAction(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "consumableVC", sender: nil)
    }
    
    // MARK: - Private methods
    
    private func buttonsIsHidden(_ value: Bool) {
        purchaseButton.isHidden = value
        restorePurchaseButton.isHidden = value
    }
    
    private func configureButtons(product: SKProduct) {
        let priceString = priceForString(product: product)
        let title = "Subscribe for \(priceString)"
        
        if productID == IAPProducts.autoRenewableTrial.rawValue {
            subscribeLabel.isHidden = false
        }
    
        self.purchaseButton.setTitle(title, for: .normal)
        self.buttonsIsHidden(false)
    }
    
    private func logEvents() {
        AppEvents.logEvent(.startTrial)
        Analytics.logEvent("start_\(productID)", parameters: nil)
    }
    
    private func pushToResultVC() {
        let storyBoard = UIStoryboard.main
        let resultVC = storyBoard.instantiateViewController(withIdentifier: "resultVC")
        navigationController?.pushViewController(resultVC, animated: true)
    }
}
