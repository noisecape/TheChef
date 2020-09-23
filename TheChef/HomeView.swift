//
//  HomeView.swift
//  TheChef
//
//  Created by Tommaso Capecchi on 23/09/2020.
//  Copyright © 2020 Tommaso Capecchi. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var fridgeSelected = false
    var body: some View {
        TabView {
            RecipesHome()
                .tabItem {
                    Image("cooker").resizable().aspectRatio(contentMode: .fit)
                    Text("Recipes")
            }
            PantryHome()
                .tabItem {
                    Image("fridge").resizable().aspectRatio(contentMode: .fit)
                    Text("Pantry")
                }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct RecipesHome:View {
    var body: some View {
        Image("cooker")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone 11"], id: \.self){ deviceName in
            HomeView().previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}
