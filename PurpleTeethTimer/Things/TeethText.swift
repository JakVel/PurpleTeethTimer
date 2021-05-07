//
//  TeethText.swift
//  PurpleTeethTimer
//
//  Created by Jakob Velle on 4/29/21.
//

import SwiftUI

struct TeethText: View {
    var title: String
    var font: Font
    var weight: Font.Weight = .ultraLight
    var color: Color = .white
    var alignment: TextAlignment = .center
    var padd: Edge.Set = .vertical
    
    var body: some View{
        Text(title)
            .font(font)
            .fontWeight(weight)
            .foregroundColor(color)
            .multilineTextAlignment(alignment)
            .padding(padd)
    }
}
