//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func displayTimeAsString(numberOfSeconds: Int) -> String {
    
    let hours: Int = numberOfSeconds / 3600
    let minutes: Int = (numberOfSeconds - (hours * 3600)) / 60
    let seconds: Int = numberOfSeconds - (hours * 3600) - (minutes * 60)
    
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
        minutesString = "\(minutes):"
    }
    
    var secondsString = ""
    if seconds < 0 {
        secondsString = "00"
    } else if seconds < 10 {
        secondsString = "0\(seconds)"
    } else {
        secondsString = "\(seconds)"
    }
    
    return hoursString + minutesString + secondsString
}
print(displayTimeAsString(127894))