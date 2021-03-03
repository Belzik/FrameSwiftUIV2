//
//  MoreScreen.swift
//  FrameSwiftUI
//
//  Created by Александр Катрыч on 28.02.2021.
//

import SwiftUI

struct MoreScreen: View {
    
    // MARK: - Properties
    
    @State var sliderValue: Double = 0.5
    @State var showCredits: Bool = false
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            ColorSlider(value: $sliderValue, textColor: .red)
            Button(action: {
                showCredits.toggle()
            }) {
                Text("Version 1.0.0")
            }
            .sheet(isPresented: $showCredits, content: {
                Text("Made by Me")
                    .font(.largeTitle)
            })
        }

    }
    
}
