//
//  CardScreenViewModel.swift
//  FrameSwiftUI
//
//  Created by Александр Катрыч on 01.03.2021.
//

import Foundation
import SwiftUI

final class CardScreenViewModel: ObservableObject {
    
    // MARK: - Properties
    
    @Binding var isOpenElement: Bool
    
    @Published var cards = [
        Card(name: "Spades", image: Image("spades")),
        Card(name: "Clubs", image: Image("clubs")),
        Card(name: "Diamonds", image: Image("diamonds")),
        Card(name: "Hearts", image: Image("hearts"))
    ]
    
    // MARK: Object life cycle
    
    init(isOpenElement: Binding<Bool>) {
        self._isOpenElement = isOpenElement
    }
    
}
