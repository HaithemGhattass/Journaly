//
//  ContentView.swift
//  Journaly
//
//  Created by haithem ghattas on 11/1/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var tabSelection = 1
    @State private var ShowCreate = false
    var body: some View {
        TabView(selection: $tabSelection) {
            JournalsView(ShowCreate: $ShowCreate)
                .tag(1)
            Text("Tab Content 2")
                .tag(2)
        }
        .overlay(alignment: .bottom) {
            HStack{
                CustomTabBarView(tabSelection: $tabSelection)
                    .padding(.leading)
                    .disabled(ShowCreate ? true : false)
                if(tabSelection == 1){
                    ZStack{
                            Capsule()
                                .frame(height: 80)
                                .foregroundColor(Color(.secondarySystemBackground))
                                .shadow(radius: 2)
                                    Button{
                                               ShowCreate = true
                                    }label: {
                                        Image(systemName: "square.and.pencil")
                                            .foregroundColor( ShowCreate ? .blue :  .gray)
                                            .font(.system(size: 25))
                                        
                                    }
                                    .disabled(ShowCreate ? true : false)
                            .frame(width:80,height: 80)
                          
                        }
                    .padding(.horizontal,30)
                }
            }
            .padding( .trailing, tabSelection == 1 ? -10 : 139 )
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
