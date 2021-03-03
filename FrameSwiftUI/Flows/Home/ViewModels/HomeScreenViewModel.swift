//
//  HomeScreenViewModel.swift
//  FrameSwiftUI
//
//  Created by Александр Катрыч on 01.03.2021.
//

import Foundation

protocol HomeScreenViewModelProtocol {
    func toSecondTabAndOpenElement()
}

final class HomeScreenViewModel {
    
    // MARK: - Properties
    
    private let startToSecondTabAndOpenElement: () -> Void
    
    // MARK: - Object life cycle
    
    init(startToSecondTabAndOpenElement: @escaping () -> Void) {
      self.startToSecondTabAndOpenElement = startToSecondTabAndOpenElement
    }
    
}

// MARK: - HomeScreenViewModelProtocol
 
extension HomeScreenViewModel: HomeScreenViewModelProtocol {
    func toSecondTabAndOpenElement() {
        startToSecondTabAndOpenElement()
    }
}
