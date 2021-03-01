//
//  FrameSwiftUI.swift
//  FrameSwiftUI
//
//  Created by Александр Катрыч on 01.03.2021.
//

import Foundation
import SwiftUI

final class FrameSwiftUI: ObservableObject {
    
    // MARK: - Properties
    
    @Published var selection: Int = 0
    @Published var isOpenElement: Bool = false
    
    // MARK: - Methods
    
    func toSecondTabAndOpenElement() {
        selection = 1
        isOpenElement = true
    }
    
}
