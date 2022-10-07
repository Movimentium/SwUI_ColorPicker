//
//  ColorSliderVw.swift
//  SwUI_ColorPicker
//
//  Created by Miguel on 7/10/22.
//

import SwiftUI

struct ColorSliderVw: View {
    @Binding var colorValue: Double
    var color: Color
    
    init(colorValue: Binding<Double> = .constant(0.0), color: Color) {
        _colorValue = colorValue
        self.color = color
    }
  
    
    var body: some View {
        HStack {
            Circle().frame(width: 20, height: 20, alignment: .leading)
                .foregroundColor(color)
            Slider(value: $colorValue, in: 0...255, step: 1)
            Text(String(format: "%03.0f", colorValue)).multilineTextAlignment(.trailing).frame(width: 40.0)
                .font(.custom("Menlo", size: 16))
        }
    }
}

//
//struct ColorSliderVw_Previews: PreviewProvider {
//    static var previews: some View {
//        ColorSliderVw(color: .red)
//    }
//}
