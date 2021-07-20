//
//  RemoteConfig.swift
//   TestomatikaTest
//
//  Created by Admin on 17.06.2021.
//

import Foundation
import Firebase

enum RemoteConfigValues: String {
    case startVC
    case subscriptionProduct
}

class RemoteConfigService {
    
    static let shared = RemoteConfigService()
    var loadingDoneCallback: (() -> Void)?
    var fetchComplete = false
    
    private init() {
        loadDefaultValues()
    }
    
    func loadDefaultValues() {
        let appDefaults: [String: Any?] = [
            RemoteConfigValues.subscriptionProduct.rawValue: IAPProducts.autoRenewable.rawValue,
            RemoteConfigValues.startVC.rawValue: 00
        ]
        RemoteConfig.remoteConfig().setDefaults(appDefaults as? [String: NSObject])
    }
    
    func fetchCloudValues(completionHandler: @escaping () -> Void) {
        activateDebugMode()
        
        RemoteConfig.remoteConfig().fetch { [weak self] _, error in
            if let error = error {
                print("Got an error fetching remote values \(error)")
                completionHandler()
                return
            }
            
            RemoteConfig.remoteConfig().activate { [weak self] _, _ in
                self?.fetchComplete = true
                print("remote config true")
                completionHandler()
            }
        }
    }
    
    func activateDebugMode() {
        let settings = RemoteConfigSettings()
        settings.minimumFetchInterval = 0
        RemoteConfig.remoteConfig().configSettings = settings
    }
    
    func bool(forKey key: RemoteConfigValues) -> Bool {
        RemoteConfig.remoteConfig()[key.rawValue].boolValue
    }
    
    func string(forKey key: RemoteConfigValues) -> String {
        RemoteConfig.remoteConfig()[key.rawValue].stringValue ?? ""
    }
    
    func int(forKey key: RemoteConfigValues) -> Int {
        RemoteConfig.remoteConfig()[key.rawValue].numberValue.intValue
    }
}
