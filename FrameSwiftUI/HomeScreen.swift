//
//  HomeScreen.swift
//  FrameSwiftUI
//
//  Created by Александр Катрыч on 28.02.2021.
//

import SwiftUI

struct HomeScreen: View {
    
    // MARK: - Properties
    
    @Binding var selection: Int
    @Binding var isOpenInfoCard: Bool
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {
            selection = 1
            isOpenInfoCard = true
        }) {
            Text("To open a second Tab")
        }
    }
    
}
