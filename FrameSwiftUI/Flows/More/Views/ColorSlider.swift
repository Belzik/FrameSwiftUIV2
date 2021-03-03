//
//  ColorSlider.swift
//  FrameSwiftUI
//
//  Created by Александр Катрыч on 03.03.2021.
//

import SwiftUI

struct ColorSlider: View {
    
    // MARK: - Properties
    
    @Binding var value: Double
    var textColor: UIColor
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            ColorUISlider(color: textColor, value: $value)
        }
    }
    
}
