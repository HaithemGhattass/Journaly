//
//  CustomTabBarView.swift
//  Journaly
//
//  Created by haithem ghattas on 11/1/2024.
//

import SwiftUI
struct CustomTabBarView: View {
    @Binding  var tabSelection: Int
    @Namespace private var animationNamespace
    
    let tabBarItems: [(image:String ,title:String)] = [
        ("book","Journals"),
        ("plus.circle","Create"),
        ("person","Profile")
    ]
    
    var body: some View {
        ZStack{
            Capsule()
                .frame(height: 80)
                .foregroundColor(Color(.secondarySystemBackground))
                .shadow(radius: 2)
            HStack{
                ForEach(0..<3){ index in
                    Button{
                            tabSelection = index + 1
                            print(tabSelection)
                      
                    }label: {
                        VStack(spacing: 8){
                            Spacer()
                            
                            Image(systemName: tabBarItems[index].image)
                            
                            Text(tabBarItems[index].title)
                                .font(.caption)
                            if index + 1 == tabSelection{
                                Capsule()
                                    .frame(height: 8)
                                    .foregroundColor(.blue)
                                    .matchedGeometryEffect(id: "SelectedTabId", in: animationNamespace)
                                    .offset(y:3)
                            } else {
                                Capsule()
                                    .frame(height: 8)
                                    .foregroundColor(.clear)
                                    .offset(y:3)
                            }
                        }
                        .foregroundColor(index + 1 == tabSelection ? .blue : .gray)
                    }
                }
            }
            .frame(height: 80)
            .clipShape(Capsule())
        }
        .padding(.horizontal)
    }
}

struct CustomTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBarView(tabSelection: .constant(1))
            .previewLayout(.sizeThatFits)
            .padding(.vertical)
    }
}
