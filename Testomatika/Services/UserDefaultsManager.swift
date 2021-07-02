//
//  UserDefaultsManager.swift
//   TestomatikaTest
//
//  Created by Admin on 11.06.2021.
//

import Foundation



class UserDefaultsManager {
    
    enum Keys: String {
        case subscription
        case dateKey
        case quizResult
        case currentQuiz
        case trial
        case subscribeExpiresDate
    }
    
    static let shared = UserDefaultsManager()
    private init() {}
    
    private let userDefaults = UserDefaults.standard
    
    var expiryDate: Date? {
        get {
            let date = userDefaults.object(forKey: UserDefaultsManager.Keys.subscribeExpiresDate.rawValue) as? Date
            return date
        }
        set {
            userDefaults.set(newValue, forKey: UserDefaultsManager.Keys.subscribeExpiresDate.rawValue)
        }
    }
    
    var isSubscription: Bool {
        get {
            userDefaults.bool(forKey: UserDefaultsManager.Keys.subscription.rawValue)
        }
        set {
            userDefaults.set(newValue, forKey: UserDefaultsManager.Keys.subscription.rawValue)
        }
    }
    
    var quizResult: Int {
        get {
            userDefaults.integer(forKey: UserDefaultsManager.Keys.quizResult.rawValue)
        }
        set {
            userDefaults.set(newValue, forKey: UserDefaultsManager.Keys.quizResult.rawValue)
        }
    }
    
    var currentQuiz: Quiz? {
        get {
            if let data = userDefaults.data(forKey: UserDefaultsManager.Keys.currentQuiz.rawValue) {
                do {
                    let quiz = try? JSONDecoder().decode(Quiz.self, from: data)
                    return quiz
                }
            }
            return nil
        }
        set {
            let data = try? JSONEncoder().encode(newValue)
            userDefaults.set(data, forKey: UserDefaultsManager.Keys.currentQuiz.rawValue)
        }
    }
}
