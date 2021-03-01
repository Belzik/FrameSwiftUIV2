//
//  Card.swift
//  FrameSwiftUI
//
//  Created by Александр Катрыч on 01.03.2021.
//

import Foundation
import SwiftUI

struct Card {
    let name: String
    let image: Image
}

extension Card: Identifiable {
    var id: String {
        return name
    }
}
