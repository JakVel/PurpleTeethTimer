//
//  ContentView.swift
//  PurpleTeethTimer
//
//  Created by Jakob Velle on 4/29/21.
//

import SwiftUI


struct ContentView: View {
    
    @StateObject var show = boolean()
    @StateObject var dragOffset = offsets()
    
    init() {
        UISegmentedControl.appearance().backgroundColor = .systemGray5
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        
        appearance.largeTitleTextAttributes = [.font : UIFont.systemFont(ofSize: 20), NSAttributedString.Key.foregroundColor : UIColor.white]
        appearance.titleTextAttributes = [.font : UIFont.systemFont(ofSize: 20), NSAttributedString.Key.foregroundColor : UIColor.white]
        
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().tintColor = .white
    }
    var body: some View {
        
        NavigationView{
            ZStack {
                TeethBackground(gradi: Gradient(colors: [Color(red: 0.45, green: 0.5, blue: 1),
                                                         Color(red: 0.3, green: 0.3, blue: 1)]))
                
                SideMenuView(show: show)
                
                HomeView(show: show, offset: dragOffset)
                    .compositingGroup()
                    .offset(x: dragOffset.getWidth() < 0 ? 0 : dragOffset.getWidth(), y: 0)
                    .shadow(radius: show.get() ? 15 : 0)
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationTitle("Home")
                    .navigationBarHidden(true)
                    .gesture(DragGesture()
                                .onChanged({ value in
                                    dragOffset.setOffset(set: value.translation)
                                    print((dragOffset.getWidth()))
                                })
                                .onEnded { _ in
                                    if dragOffset.getWidth() > 100 {
                                        withAnimation(.default) {
                                            show.setTrue()
                                            dragOffset.setWidth(w: 300)
                                        }
                                    }else{
                                        withAnimation(.default) {
                                            dragOffset.setOffset(set: .zero)
                                        }
                                    }
                                }
                    )
                
                if show.get() {
                    TransparentButtonView()
                        .offset(x: dragOffset.getWidth() < 0 ? 0 : dragOffset.getWidth(), y: 0)
                        .opacity(0.3)
                        .onTapGesture {
                            withAnimation(.default){
                                show.toggle()
                                dragOffset.setOffset(set: .zero)
                            }
                        }
                        .gesture(DragGesture()
                                    .onChanged({ value in
                                        dragOffset.setOffset(set: value.translation)
                                        dragOffset.setWidth(w: 300 + dragOffset.getWidth())
                                        print(300 + dragOffset.getWidth())
                                    })
                                    .onEnded { _ in
                                        if dragOffset.getWidth() < 200 {
                                            withAnimation(.default) {
                                                show.setFalse()
                                                dragOffset.setOffset(set: .zero)
                                            }
                                        }else{
                                            withAnimation(.default){
                                                dragOffset.setWidth(w: 300)
                                            }
                                        }
                                    }
                        )
                        .navigationBarHidden(true)
                }
            }
            .onAppear{
                show.setFalse()
                dragOffset.setOffset(set: .zero)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

