//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 장은애(Eunae Jang) on 2022/04/15.
//

import SwiftUI

@main // 앱의 진입점 식별
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
