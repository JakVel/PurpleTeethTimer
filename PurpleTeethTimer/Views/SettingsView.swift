//
//  SettingsView.swift
//  PurpleTeethTimer
//
//  Created by Jakob Velle on 5/7/21.
//

import SwiftUI

struct SettingsView: View {
    var gradi: Gradient = Gradient(colors: [Color(red: 0.8, green: 0.8, blue: 1),
                                            Color(red: 0.85, green: 0.9, blue: 1)])
    @Environment(\.colorScheme) var colorScheme
    
//    init() {
//        UINavigationBar.appearance().standardAppearance = UINavigationBarAppearance()
//        UINavigationBar.appearance().tintColor = colorScheme == .dark ? .white : .black
//    }
    var body: some View {
        NavigationView{
            ZStack{
                TeethBackground(gradi: gradi)
                ScrollView{
                    VStack{
                        HStack{
                            
                        }
                    }
                }
            }
        }.navigationTitle("Settings")
        .accentColor(.black)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
