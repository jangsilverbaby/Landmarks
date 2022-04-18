//
//  ContentView.swift
//  Landmarks
//
//  Created by 장은애(Eunae Jang) on 2022/04/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) { // Stack : 여러 뷰를 겷합하고 포함할 수 있음.
                Text("Tutle Rock")
                    .font(.title) // Command + click : User the insperctor
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer() // 크기를 정의하는 대신 상위 뷰의 모든 공간을 사용하도록 확장
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
