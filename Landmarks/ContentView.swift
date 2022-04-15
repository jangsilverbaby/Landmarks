//
//  ContentView.swift
//  Landmarks
//
//  Created by 장은애(Eunae Jang) on 2022/04/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Tutle Rock")
            .font(.title) // Command + click : User the insperctor
            .foregroundColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
