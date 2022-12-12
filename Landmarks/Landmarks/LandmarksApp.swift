//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Anna Shuryaeva on 09.12.2022.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
