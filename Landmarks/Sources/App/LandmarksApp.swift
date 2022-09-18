//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Geonhee on 2022/09/18.
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
