//
//  ContentView.swift
//  FrameSwiftUI
//
//  Created by Александр Катрыч on 28.02.2021.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    @ObservedObject var frameSwiftUI: FrameSwiftUI
    
    // MARK: - Body
    
    var body: some View {
        TabView(selection: $frameSwiftUI.selection) {
            HomeScreen(viewModel: HomeScreenViewModel(startToSecondTabAndOpenElement: frameSwiftUI.toSecondTabAndOpenElement))
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)
            CardsScreen(frameSwiftUI: frameSwiftUI)
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
        ContentView(frameSwiftUI: FrameSwiftUI())
    }
}
