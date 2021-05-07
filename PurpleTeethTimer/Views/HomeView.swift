//
//  HomeView.swift
//  PurpleTeethTimer
//
//  Created by Jakob Velle on 5/4/21.
//

import SwiftUI

struct HomeView: View, Animatable {
    @State var toothBrushType: Int = 240
    @ObservedObject var show: boolean
    @ObservedObject var offset: offsets
    
    var body: some View {
        ZStack{
            TeethBackground()
            VStack{
                //Spacer()
                HStack{
                    Button(action: {
                            withAnimation(.default){
                                show.setTrue()
                                offset.setWidth(w: 300)
                            }
                    }, label: {
                        Image(systemName: "list.bullet")
                            .accentColor(.white)
                            .padding()
                        Spacer()
                    })
                }
                TeethText(title: "Welcome to Teeth Timer!",
                          font: .largeTitle)
                TeethText(title: "This app will time your teeth-brushing so you brush the correct amount! It also gives you tips that will lower your environmental impact.",
                          font: .title2)
                Spacer()
                TeethText(title: "What toothbrush experience are you looking for?",
                          font: .headline)
                HStack{
                    Spacer()
                    Picker(selection: $toothBrushType, label: Text("What brushing experience are you looking for?")) {
                        Text("Manual").tag(180)
                        Text("Thorough Clean").tag(240)
                        Text("Electric").tag(120)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    Spacer()
                }
                Spacer()
                VStack{
                    NavigationLink(destination: TimerView(toothBrush: toothBrushType,
                                                          seconds: toothBrushType)){
                        ZStack{
                            Text("🦷").font(.system(size: 150))
                            VStack{
                                Text("Start brushing! \n\n").foregroundColor(.black)
                            }
                        }
                    }
                }
                Spacer()
                Banner()
            }
        }
    }
}
