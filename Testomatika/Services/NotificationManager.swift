//
//  NotificationManager.swift
//   TestomatikaTest
//
//  Created by Admin on 29.06.2021.
//

import Foundation
import Firebase
import FirebaseMessaging
import UserNotifications

class NotificationManager: NSObject {
    
    static let shared = NotificationManager()
    
    private let center = UNUserNotificationCenter.current()

    override private init() {}
    
    func getNotificationStatus(completion: @escaping (UNAuthorizationStatus) -> Void) {
        center.getNotificationSettings { settings in
            completion(settings.authorizationStatus)
        }
    }
    
    func registerForNotifications() {
        Messaging.messaging().delegate = self
        UNUserNotificationCenter.current().delegate = self
        let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
        UNUserNotificationCenter.current().requestAuthorization(options: authOptions, completionHandler: {_, _ in })
        UIApplication.shared.registerForRemoteNotifications()
    }
    
    func didRegisterForRemoteNotifications(_ deviceToken: Data) {
        let tokenComponents = deviceToken.map { data in String(format: "%02.2hhx", data) }
        let deviceTokenString = tokenComponents.joined()
        print("Device token: \(deviceTokenString)")
        Messaging.messaging().apnsToken = deviceToken
    }
    
    func didFailToRegisterForRemoteNotifications(_ error: Error) {
        print("Failed to register for notifications: \(error)")
    }
    
    func didReceiveRemoteNotification(_ userInfo: [AnyHashable: Any]) {
        // Did receive notification from AppDelegate
        print("Did receive notification: \(userInfo)")
    }

}

// MARK: - UNUserNotificationCenterDelegate

extension NotificationManager: UNUserNotificationCenterDelegate {
    
    func userNotificationCenter(_ center: UNUserNotificationCenter,
                                willPresent notification: UNNotification,
                                withCompletionHandler completionHandler:
                                @escaping (UNNotificationPresentationOptions) -> Void) {
        // Showing notification while app in foreground
        completionHandler([.alert, .badge, .sound])
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        
        let userInfo = response.notification.request.content.userInfo
        print("Did receive notification[foreground]: \(userInfo)")
        
        UIApplication.shared.applicationIconBadgeNumber = 0
        completionHandler()
    }
}

// MARK: - MessagingDelegate
extension NotificationManager: MessagingDelegate {
    func messaging(_ messaging: Messaging, didReceiveRegistrationToken fcmToken: String?) {
//        print("Firebase registration token: \(fcmToken)")
    }
}
