//
//  Notifications.swift
//  LOC
//
//  Created by ARWA ALSALEM on 17/06/1444 AH.
//



import SwiftUI
import UserNotifications

struct Notifications: View {
    var body: some View {
        
        VStack {
            Button("Request Permission") {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                    if success {
                        print("All set!")
                    } else if let error = error {
                        print(error.localizedDescription)
                    }
                }
            }
            
            Button("Schedule Notification") {
                let content = UNMutableNotificationContent()
                content.title = "لاتنسى"
                content.subtitle = "!تأخذ نفس"
                content.sound = UNNotificationSound.default
                
                // show this notification five seconds from now
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 60, repeats: false)
                
                // choose a random identifier
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                
                // add our notification request
                UNUserNotificationCenter.current().add(request)
            }
        }
    }
}
