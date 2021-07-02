//
//  IAPManager.swift
//   TestomatikaTest
//
//  Created by Admin on 29.06.2021.
//

import Foundation
import SwiftyStoreKit
import StoreKit

class IAPManager {
    static let shared = IAPManager()
    
    private init() {}
    
    var products: Set<SKProduct> = []
    
    func completeTransactions() {
        SwiftyStoreKit.completeTransactions(atomically: true) { purchases in
            for purchase in purchases {
                switch purchase.transaction.transactionState {
                case .purchased, .restored:
                    if purchase.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(purchase.transaction)
                    }
                // Unlock content
                case .failed, .purchasing, .deferred:
                    break // do nothing
                @unknown default:
                    fatalError()
                }
            }
        }
    }
    
    func getProducts() {
        SwiftyStoreKit.retrieveProductsInfo([
            IAPProducts.consumable.rawValue,
            IAPProducts.autoRenewable.rawValue,
            IAPProducts.autoRenewableTrial.rawValue
        ]) { [weak self] result in
            guard let self = self else { return }
            guard result.error == nil else { return }
            self.products = result.retrievedProducts
            print("Products: \(self.products.count)")
        }
    }
    
    func verifySubscription(productID: String, complitionHandler: @escaping (Result<Bool, Error>) -> Void) {
        SwiftyStoreKit.fetchReceipt(forceRefresh: true) { result in
            switch result {
            case .success(_):
                let appleValidator = AppleReceiptValidator(service: .production, sharedSecret: "5bc31f560bc249ddbff514b174635567")
                SwiftyStoreKit.verifyReceipt(using: appleValidator) { result in
                    
                    if case .success(let receipt) = result {
                        
                        let purchaseResult = SwiftyStoreKit.verifySubscription(
                            ofType: .autoRenewable,
                            productId: productID,
                            inReceipt: receipt)
                        
                        switch purchaseResult {
                        case .purchased(let expiryDate, _):
                            complitionHandler(.success(true))
                            UserDefaultsManager.shared.isSubscription = true
                            UserDefaultsManager.shared.expiryDate = expiryDate
                        case .expired(_, _):
                            complitionHandler(.failure(IAPError.expired))
                        case .notPurchased:
                            complitionHandler(.failure(IAPError.notPurchased))
                        }
                    } else {
                        complitionHandler(.failure(IAPError.receiptVerification))
                    }
                }
            case .error(let error):
                complitionHandler(.failure(error))
            }
        }
    }
}

enum IAPError {
    case receiptVerification
    case receiptFailed
    case expired
    case notPurchased
    
}

extension IAPError: LocalizedError {
    
    var errorDescription: String? {
        switch self {
        case .receiptVerification:
            return NSLocalizedString("Receipt verification error", comment: "")
        case .receiptFailed:
            return NSLocalizedString("Fetch receipt failed. Try again later.", comment: "")
        case .expired:
            return NSLocalizedString("Product is expired.", comment: "")
        case .notPurchased:
            return NSLocalizedString("This product has never been purchased", comment: "")
        }
    }
}
