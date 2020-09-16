//
//  ContentView.swift
//  TheChef
//
//  Created by Tommaso Capecchi on 16/09/2020.
//  Copyright © 2020 Tommaso Capecchi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader{ geometry in
            Text("Hello World").font(.system(size: 40, weight: .bold, design: .default)).foregroundColor(Color.orangeCustom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone 11"], id: \.self){ deviceName in
            ContentView().previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}
