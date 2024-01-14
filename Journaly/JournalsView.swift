//
//  JournalsView.swift
//  Journaly
//
//  Created by haithem ghattas on 14/1/2024.
//

import SwiftUI

struct JournalsView: View {
    @Binding var ShowCreate : Bool
    var body: some View {
        ZStack{
            Text("Hello, World!")
                .offset(y:ShowCreate ? -50 : 0)
            
            if ShowCreate {
                CreatePageView()
                    .transition(.move(edge: .top).combined(with: .opacity))
                    .overlay(
                        Button {
                            withAnimation(.spring()){
                                ShowCreate = false
                            }
                           
                        }label: {
                            Image(systemName: "xmark")
                                .frame(width:36,height: 36)
                                .foregroundColor(.black)
                                .background(.white)
                                .mask(Circle())
                            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.3), radius: 5,x: 0,y:3)
                        }
                            .frame(maxHeight: .infinity,alignment: .bottom)
                    
                    )
                    .zIndex(1)
                
            }
          
        }
    }
}

#Preview {
    JournalsView(ShowCreate: .constant(false))
}
