//
//  ContentView.swift
//  Journaly
//
//  Created by haithem ghattas on 11/1/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var tabSelection = 1
    
    var body: some View {
        TabView(selection: $tabSelection) {
            Text("Tab Content 1")
                .tag(1)
            Text("Tab Content 2")
                .tag(2)
            Text("Tab Content 3")
                .tag(3)
        }
        .overlay(alignment: .bottom){
            CustomTabBarView(tabSelection: $tabSelection)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
