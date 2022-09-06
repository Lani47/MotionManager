//
//  ForegroundNotificationDelegate.swift
//  MotionManager
//
//  Created by cmStudent on 2022/09/02.
//

import UserNotifications

//フォアグラウンド通知用、バックグラウンドのみなら不要
class ForegroundNotificationDelegate:NSObject,UNUserNotificationCenterDelegate{
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        
        //completionHandler([.alert, .list, .badge, .sound]) //~iOS13
        completionHandler([.banner, .list, .badge, .sound]) //iOS14~
    }
}
