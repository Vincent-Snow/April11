//
//  Timer.swift
//  Timer
//
//  Created by mac-admin on 4/11/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import Foundation

class Timer: NSObject {
    
    static let secondTick: String = "NotificationSecondTick"
    static let timerComplete: String = "NotifcicationTimerComplete"
    
    private(set) var seconds = NSTimeInterval(0)
    private(set) var totalSeconds = NSTimeInterval(0)
    var timer: NSTimer?
    
    var timeAsString: String {
        let secondsRemaining = Int(self.seconds)
        
        let hours = secondsRemaining / 3600
        let minutes = (secondsRemaining - (hours * 3600)) / 60
        let seconds = secondsRemaining - (hours * 3600) - (minutes * 60)
        
        var hoursString = ""
        if hours < 10 && hours > 0 {
            hoursString = "0\(hours):"
        } else if hours > 0 {
            hoursString = "\(hours):"
        }
        
        var minutesString = ""
        if minutes < 10 {
            minutesString = "0\(minutes):"
        } else {
            minutesString = "\(minutes)"
        }
        
        var secondsString = ""
        if seconds < 10 {
            secondsString = "0\(seconds)"
        } else {
            secondsString = "\(seconds)"
        }
        
        return hoursString + minutesString + secondsString
    }
    
    var isOn: Bool {
        if timer != nil {
            return true
        } else {
            return false
        }
    }
    
    func setTimer(seconds: NSTimeInterval, totalSeconds: NSTimeInterval) {
        self.seconds = seconds
        self.totalSeconds = totalSeconds
    }
    
    func startTimer() {
        
    }
    
    func stopTimer() {
        
    }
    
    func secondTick() {
        
    }
    
    
    
}