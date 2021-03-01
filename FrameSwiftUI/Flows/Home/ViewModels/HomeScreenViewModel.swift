//
//  HomeScreenViewModel.swift
//  FrameSwiftUI
//
//  Created by Александр Катрыч on 01.03.2021.
//

import Foundation

protocol HomeScreenViewModelProtocol {
    func toSecondTapAndOpenElement()
}

final class HomeScreenViewModel {
    
    // MARK: - Properties
    
    private let startToSecondTapAndOpenElement: () -> Void
    
    // MARK: - Object life cycle
    
    init(startToSecondTapAndOpenElement: @escaping () -> Void) {
      self.startToSecondTapAndOpenElement = startToSecondTapAndOpenElement
    }
    
}

extension HomeScreenViewModel: HomeScreenViewModelProtocol {
    
    func toSecondTapAndOpenElement() {
        startToSecondTapAndOpenElement()
    }
    
}
