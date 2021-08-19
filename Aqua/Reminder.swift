import Foundation
class Reminder {
    
    private var timer: Timer?
    
    func startTimer( intervalInSecs:Double) {
        timer = Timer.scheduledTimer(timeInterval: intervalInSecs,
                                     target: self,
                                     selector: #selector(showNotification),
                                     userInfo: nil, repeats: true)
    }
    
    @objc private func showNotification() {
        let notification = NSUserNotification()
        notification.title = "Glug! Glug!! Glug!!!"
        notification.informativeText = "Stay Hungry, Stay Foolish, Stay HYDRATED."
        notification.hasActionButton = true
        notification.otherButtonTitle = "Dismiss"
        notification.actionButtonTitle = "OK"
        notification.soundName = NSUserNotificationDefaultSoundName
        let notificationCenter = NSUserNotificationCenter.default
        notificationCenter.deliver(notification)
    }
    
    func reset(intervalInSecs:Double) {
        timer?.invalidate()
        startTimer(intervalInSecs: intervalInSecs)
        NSLog("reset called with %D",intervalInSecs)
    }
}
