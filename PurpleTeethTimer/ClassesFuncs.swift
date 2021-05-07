//
//  Classes.swift
//  PurpleTeethTimer
//
//  Created by Jakob Velle on 5/4/21.
//

import SwiftUI

class offsets: ObservableObject {
    @Published var offset: CGSize = .zero
    
    func setOffset(set: CGSize){
        offset = set
    }
    func setWidth(w: CGFloat) -> () {
        offset.width = w
    }
    func setHeight(h: CGFloat) -> () {
        offset.height = h
    }
    
    func get() -> CGSize {
        return offset
    }
    func getWidth() -> CGFloat {
        return offset.width
    }
    func getHeight() -> CGFloat {
        return offset.height
    }
}

class boolean: ObservableObject {
    @Published var b: Bool = false
    
    func toggle() -> () {
        b.toggle()
    }
    func setTrue() -> () {
        b = true
    }
    func setFalse() -> () {
        b = false
    }
    
    func get() -> Bool {
        return b
    }
}




func Notify(title: String, message: String, time: Double, id: String) {
    let content = UNMutableNotificationContent()
    content.title = title
    content.body = message
    let time: Double = time
    
    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
    let req = UNNotificationRequest(identifier: id,
                                    content: content,
                                    trigger: trigger)
    UNUserNotificationCenter.current().add(req, withCompletionHandler: nil)
}
