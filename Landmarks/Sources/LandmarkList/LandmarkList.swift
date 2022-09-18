//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Geonhee on 2022/09/18.
//

import SwiftUI

struct LandmarkList: View {
  @State private var showFavoritesOnly = false

  var filteredLandmarks: [Landmark] {
    return landmarks.filter { !showFavoritesOnly || $0.isFavorite }
  }

  var body: some View {
    NavigationView {
      List(filteredLandmarks) { landmark in
        NavigationLink(
          destination: { LandmarkDetail(landmark: landmark) },
          label: { LandmarkRow(landmark: landmark) }
        )
      }
      .navigationTitle("Landmarks")
    }
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    ForEach(["iPhone SE (3rd generation)", "iPhone XS Max"], id: \.self) { deviceName in
      LandmarkList()
        .previewDevice(PreviewDevice(rawValue: deviceName))
        .previewDisplayName(deviceName)
    }
  }
}
