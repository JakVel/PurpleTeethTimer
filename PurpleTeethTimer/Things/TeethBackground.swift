//
//  TeethBackground.swift
//  PurpleTeethTimer
//
//  Created by Jakob Velle on 4/29/21.
//

import SwiftUI

struct TeethBackground: View {
    var gradi: Gradient = Gradient(colors: [Color(red: 0.65, green: 0.7, blue: 1),
                                            Color(red: 0.5, green: 0.5, blue: 1)])
    var startP: UnitPoint = .topLeading
    var endP: UnitPoint = .bottomTrailing
    var ignoreSafe: Bool = true
    
    var body: some View{
        if ignoreSafe {
            LinearGradient(gradient: gradi,
                           startPoint: startP,
                           endPoint: endP).ignoresSafeArea()
        } else {
            LinearGradient(gradient: gradi,
                           startPoint: startP,
                           endPoint: endP)
        }
    }
}
