//
//  SideMenuView.swift
//  PurpleTeethTimer
//
//  Created by Jakob Velle on 5/4/21.
//

import SwiftUI

struct SideMenuView: View {
    let gradient = Gradient(colors: [Color(red: 0.45, green: 0.5, blue: 1),
                                     Color(red: 0.3, green: 0.3, blue: 1)])
    @ObservedObject var show: boolean
    
    
    var body: some View {
        ZStack{
            TeethBackground(gradi: gradient)
            VStack{
                HStack {
                    TeethText(title: "Teeth Timer",
                              font: .largeTitle,
                              weight: .medium,
                              padd: .all)
                    Spacer()
                }
                NavigationLink(
                    destination: TipsView(),
                    label: {
                        SideMenuOption(image: SideMenuViewModel.tips.image,
                                       text: SideMenuViewModel.tips.title)
                    })
                NavigationLink(
                    destination: Charity(),
                    label: {
                        SideMenuOption(image: SideMenuViewModel.charity.image,
                                       text: SideMenuViewModel.charity.title)
                    })
                NavigationLink(
                    destination: TimerView(toothBrush: 60),
                    label: {
                        SideMenuOption(image: SideMenuViewModel.settings.image,
                                       text: SideMenuViewModel.settings.title)
                    })
                Spacer()
            }
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(show: boolean())
    }
}
