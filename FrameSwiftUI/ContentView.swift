//
//  ContentView.swift
//  FrameSwiftUI
//
//  Created by Александр Катрыч on 28.02.2021.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    @State private var selection: Int = 1
    @State private var isOpenInfoCard: Bool = false
    
    // MARK: - Body
    
    var body: some View {
        TabView(selection: $selection) {
            HomeScreen(selection: $selection, isOpenInfoCard: $isOpenInfoCard)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)
            CardsScreen(isOpenInfoCard: $isOpenInfoCard)
                .tabItem {
                    Image(systemName: "greetingcard")
                    Text("Cards")
                }
                .tag(1)
            MoreScreen()
                .tabItem {
                    Image(systemName: "ellipsis.circle")
                    Text("More")
                }
                .tag(2)
        }
    }
}

// MARK: - PreviewProvider

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
