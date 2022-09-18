//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Geonhee on 2022/09/18.
//

import SwiftUI

struct LandmarkList: View {

  var body: some View {
    NavigationView {
      List(landmarks) { landmark in
        NavigationLink(destination: LandmarkDetail.init) {
          LandmarkRow(landmark: landmark)
        }
      }
      .navigationTitle("Landmarks")
    }
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkList()
  }
}
