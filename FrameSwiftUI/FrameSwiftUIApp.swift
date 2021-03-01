//
//  FrameSwiftUIApp.swift
//  FrameSwiftUI
//
//  Created by Александр Катрыч on 28.02.2021.
//

import SwiftUI

@main
struct FrameSwiftUIApp: App {
    
    // MARK: - Properties
    
    let frameSwiftUI: FrameSwiftUI = .init()
    
    // MARK: - Body
    
    var body: some Scene {
        WindowGroup {
            ContentView(frameSwiftUI: frameSwiftUI)
        }
    }
    
}
