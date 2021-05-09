//
//  CharityView.swift
//  PurpleTeethTimer
//
//  Created by Jakob Velle on 5/6/21.
//

import SwiftUI

struct Charity: View {
    var body: some View {
        ZStack{
            TeethBackground()
            VStack{
                TeethText(title: "Purple Teeth Timer is dedicated to making the oceans cleaner!",
                          font: .title)
                TeethText(title: "Purple Teeth Timer is dedicated to making the oceans cleaner by donating 50% of the apps profits to The Ocean Cleanup Project™. If you want to further support the efforts of saving our oceans feel free to visit their site and donate whatever amount you feel appropriate.",
                          font: .title2)
                Link(destination: URL(string: "https://theoceancleanup.com/donate/")!){
                    VStack{
                        Image("TheOceanCleanup")
                            .resizable()
                            .frame(width: 300, height: 168, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Text("https://theoceancleanup.com/donate/")
                    }
                }
                Spacer()
                Text("Purple Teeth Timer is not affiliated with The Ocean Cleanup™ in any way.")
                    .padding()
                    .font(Font.system(size:8, design: .default))
                    .multilineTextAlignment(.center)
            }
        }
        .navigationTitle("Charity")
        .navigationBarTitleDisplayMode(.inline)
    }
}
