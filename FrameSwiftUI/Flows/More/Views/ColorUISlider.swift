//
//  ColorUISlider.swift
//  BullsEye
//
//  Created by Александр Катрыч on 02.03.2021.
//  Copyright © 2021 Ray Wenderlich. All rights reserved.
//

import SwiftUI

struct ColorUISlider: UIViewRepresentable {
    
    // MARK: - Properties
    
    var color: UIColor
    @Binding var value: Double
    
    // MARK: - Methods
    
    func makeCoordinator() -> CoordinatorUISlider {
        Coordinator(value: $value)
    }
  
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider(frame: .zero)
        slider.thumbTintColor = color
        slider.value = Float(value)
        
        slider.addTarget(context.coordinator,
                         action: #selector(Coordinator.valueChanged(_:)),
                         for: .valueChanged)
        
        return slider
    }

    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(self.value)
    }
  
}

final class CoordinatorUISlider: NSObject {

    // MARK: - Properties
    
    var value: Binding<Double>
    
    // MARK: - Object life cycle
    
    init(value: Binding<Double>) {
        self.value = value
    }

    // MARK: - Methods
    
    @objc func valueChanged(_ sender: UISlider) {
        self.value.wrappedValue = Double(sender.value)
    }
    
}
