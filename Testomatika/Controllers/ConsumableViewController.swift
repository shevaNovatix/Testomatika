//
//  ConsumableViewController.swift
//   TestomatikaTest
//
//  Created by Admin on 09.06.2021.
//

import UIKit
import StoreKit
import Firebase
import FBSDKCoreKit
import SwiftyStoreKit
import JGProgressHUD

class ConsumableViewController: MainViewController {
    
    @IBOutlet weak var purchaseButton: MainButton!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    private let productID = IAPProducts.consumable.rawValue
    
    private var product: SKProduct? {
        if let product = IAPManager.shared.products.filter({ $0.productIdentifier == self.productID }).first {
            return product
        }
        return nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        
        textView.attributedText = NSAttributedString.textViewText()
        textView.linkTextAttributes = NSAttributedString.linkAttributes()
        
        descriptionLabel.font = Roboto.fetchFont(.regular, with: 18)
        descriptionLabel.addShadow()
        configureUI()
    }
    
    // MARK: - Actions
    
    @IBAction func purchaseButtonAction() {
        showSpiner()
        SwiftyStoreKit.purchaseProduct(productID) { [weak self] result in
            guard let self = self else { return }
            self.hideSpiner()
            
            switch result {
            case .success(_):
                self.logEvents()
                self.pushToResultVC()
            case .error(let error):
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
    
    @IBAction func dismissAction(_ sender: UIBarButtonItem) {
        Analytics.logEvent("CloseConsumablePurchase", parameters: nil)
        setMainViewController()
    }
    
    // MARK: - Private methods
    
    private func configureUI() {
        if let product = product {
            configureButton(product: product)
            descriptionLabel.isHidden = false
        } else {
            purchaseButton.isHidden = true
        }
    }
    
    private func configureButton(product: SKProduct) {
        let priceString = priceForString(product: product)
        let titel = "Buy result for \(priceString)"
        
        descriptionLabel.text = "Stop! Don’t go! Get your test result for just \(priceString). You won’t need to subscribe to a monthly pay and this does not obligate you to register for anything. After just a few clicks, you will have the test results!"
        
        self.purchaseButton.setTitle(titel, for: .normal)
        self.purchaseButton.isHidden = false
    }
    
    private func logEvents() {
        AppEvents.logEvent(.startTrial)
        Analytics.logEvent("purchase", parameters: nil)
    }
    
    private func pushToResultVC() {
        let storyBoard = UIStoryboard.main
        let resultVC = storyBoard.instantiateViewController(withIdentifier: "resultVC")
        navigationController?.pushViewController(resultVC, animated: true)
    }
}
