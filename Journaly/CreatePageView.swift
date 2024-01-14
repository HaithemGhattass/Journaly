//
//  CreatePageView.swift
//  Journaly
//
//  Created by haithem ghattas on 14/1/2024.
//

import SwiftUI

struct CreatePageView: View {
    @State var title = ""
    var body: some View {
        VStack(spacing: 24) {
            

            Text("Create Page")
            VStack(alignment: .leading){
                Text("Page title:")
                TextField("",text: $title)
                    .padding(15)
                    .padding(.leading,36)
                    .background(.white)
                    .mask(RoundedRectangle(cornerRadius: 10,style: .continuous)
                        .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .stroke()
                            .fill(.black.opacity(0.1))
                        )
                    )
                
            }
            Divider()
            Text("some random texts")
            Label("Create",systemImage: "text.book.closed.fill")
                .padding(20)
                .frame(maxWidth: .infinity)
                .background(.pink)
                .foregroundColor(.white)
                .cornerRadius(20, cornerns: [.topRight,.bottomLeft,.bottomRight])
                .cornerRadius(8, cornerns: [.topLeft])
                .shadow(color: .pink.opacity(0.5), radius: 20, x: 0, y: 10 )
            
        }
        .padding(30)
        .background(.regularMaterial)
        .mask(RoundedRectangle(cornerRadius: 20, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.2), radius: 5,x: 0,y:3)
        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.2), radius: 30,x: 0,y:30)
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                .stroke(.linearGradient(colors: [Color.white.opacity(0.8) ,Color.white.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing))
        )
        .padding()
      
    }
}

#Preview {
    CreatePageView()
}
