//
//  SideMenuOption.swift
//  PurpleTeethTimer
//
//  Created by Jakob Velle on 5/4/21.
//

import SwiftUI

struct SideMenuOption: View {
    var image: String
    var text: String
    
    var body: some View {
        HStack(spacing: 16){
            Image(systemName: image)
                .frame(width: 24, height: 24)
            Text(text).font(.system(size: 15, weight: .semibold))
            Spacer()
        }
        .foregroundColor(.white)
        .padding()
    }
}
