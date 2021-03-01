//
//  HomeScreen.swift
//  FrameSwiftUI
//
//  Created by Александр Катрыч on 28.02.2021.
//

import SwiftUI

struct HomeScreen: View {
    
    // MARK: - Properties
    
    let viewModel: HomeScreenViewModelProtocol
    
    // MARK: - Body
    
    var body: some View {
        Button(action: {
            viewModel.toSecondTapAndOpenElement()
        }) {
            Text("To open a second Tab")
        }
    }
    
}
