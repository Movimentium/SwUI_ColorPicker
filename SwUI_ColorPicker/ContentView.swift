//
//  ContentView.swift
//  SwUI_ColorPicker
//
//  Created by Miguel Gallego on 7/10/22.
//

import SwiftUI

struct F {
    static func strHex(_ d: Double) -> String {
        return String(format: "%02X", Int(d))
    }
}

struct ContentView: View {
    @State var r = 0.0
    @State var g = 0.0
    @State var b = 0.0
    let ff = 255.0

    var body: some View {
        VStack {
            Text("Color Picker")
                .padding([.top, .leading, .trailing])
                .font(.largeTitle)
            Text("with SwiftUI")
        }
        VStack {
            Image(systemName: "gamecontroller.fill")
                .foregroundColor(Color(red: r/ff, green: g/ff, blue: b/ff))
                .font(.largeTitle)
            Text("#\(F.strHex(r))\(F.strHex(g))\(F.strHex(b))")
                .padding(.top, 4.0)
                .font(.custom("Menlo", size: 16))
            ColorSliderVw(colorValue: $r, color: .red)
            ColorSliderVw(colorValue: $g, color: .green)
            ColorSliderVw(colorValue: $b, color: .blue)
        }.padding(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
