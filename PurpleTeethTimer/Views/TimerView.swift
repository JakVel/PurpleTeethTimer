//
//  TimerView.swift
//  PurpleTeethTimer
//
//  Created by Jakob Velle on 4/29/21.
//

import SwiftUI
import UIKit

struct TimerView: View {
    var toothBrush: Int
    @State var gradi: Gradient = Gradient(colors: [Color(red: 0.65, green: 0.7, blue: 1),
                                                   Color(red: 0.5, green: 0.5, blue: 1)])
    @State var checked = true
    @State var imageName = "Teeth-illu1"
    @State var headlines: String = "Brush showed section"
    let electricTime = 120
    let manualTime = 240
    @State var choosenToothbrush = 240
    @State var seconds = 240
    @State var dateEnd = Date()
    @State var dateNow = Date()
    @State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack{
            TeethBackground(gradi: gradi)
            VStack{
                TeethText(title: headlines, font: .headline, weight: .medium)
                ZStack{
                    if seconds % 60 < 10 {
                        TeethText(title: "0\(seconds/60):0\(seconds%60)",
                                  font: /*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/, weight: .light)
                    }else{
                        TeethText(title: "0\(seconds/60):\(seconds%60)",
                                  font: /*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/, weight: .light)
                    }
                    Image(imageName).resizable().frame(width: 200, height: 250)
                }
                Spacer()
                BannerTime()
            }
            .navigationBarTitleDisplayMode(.inline)
        }.onAppear(perform: {
            choosenToothbrush = toothBrush
            UNUserNotificationCenter.current().requestAuthorization(options: [.badge, .alert, .sound]) {(_,_) in
                Notify(title: "Time to switch!",
                        message: "Switch your brushing to the lower right half",
                        time: Double(Double(choosenToothbrush)*0.25),
                        id: "Timer1")
                Notify(title: "Time to switch!",
                       message: "Switch your brushing to the lower left half",
                       time: Double(choosenToothbrush)*0.5,
                       id: "Timer2")
                Notify(title: "Time to switch!",
                       message: "Switch your brushing to the upper left half",
                       time: Double(choosenToothbrush)*0.75,
                       id: "Timer3")
                Notify(title: "You are done!",
                       message: "You are done brushing! Thank you for using TeethTimer",
                       time: Double(choosenToothbrush),
                       id: "Timer4")
            }
        })
        .onDisappear(perform: {
            timer.upstream.connect().cancel()
            UNUserNotificationCenter.current().getPendingNotificationRequests { (notificationRequests) in
                var identifiers: [String] = []
                for notification:UNNotificationRequest in notificationRequests {
                    if (notification.identifier == "Timer1" ||
                        notification.identifier == "Timer2" ||
                        notification.identifier == "Timer3" ||
                        notification.identifier == "Timer4" ) {
                        identifiers.append(notification.identifier)
                    }
                }
                UNUserNotificationCenter.current().removePendingNotificationRequests(withIdentifiers: identifiers)
                print(identifiers)
            }
        }).onReceive(timer) { (_) in
            if checked {
                checked.toggle()
                seconds = toothBrush
                dateEnd = dateEnd.addingTimeInterval(Double(choosenToothbrush))
            }
            dateNow = Date()
            seconds = Calendar.current.dateComponents([.second], from: dateNow, to: dateEnd).second ?? 0
            if seconds > 0 {
                withAnimation(.default){
                    if imageName == "Teeth-illu1" {
                        if Float(seconds)/Float(choosenToothbrush) > 0.75{
                            imageName = "Teeth-high1"
                        } else if Float(seconds)/Float(choosenToothbrush) > 0.5{
                            headlines = "Remember to turn off the faucet"
                            imageName = "Teeth-high2"
                        } else if Float(seconds)/Float(choosenToothbrush) > 0.25{
                            headlines = "If you struggle with a lot of foam, then you can try to use less toothpaste"
                            imageName = "Teeth-high3"
                        } else {
                            headlines = "Thank you for using Teeth Timer"
                            imageName = "Teeth-high4"
                        }
                    } else {
                        imageName = "Teeth-illu1"
                    }
                }
            } else {
                seconds = 0
                imageName = "Teeth-illu1"
                gradi = Gradient(colors: [Color(red: 0.1, green: 1, blue: 0.1),
                                          Color(red: 0.35, green: 1, blue: 0.35)])
                timer.upstream.connect().cancel()
            }
        }
    }
}
