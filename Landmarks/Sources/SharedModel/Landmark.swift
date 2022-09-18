//
//  Landmark.swift
//  Landmarks
//
//  Created by Geonhee on 2022/09/18.
//

import CoreLocation
import Foundation
import SwiftUI

struct Landmark: Hashable, Codable {
  var id: Int
  var name: String
  var park: String
  var state: String
  var description: String

  private var imageName: String
  var image: Image {
    return Image(imageName)
  }

  private var coordinates: Coordinates
  var locationCoordinate: CLLocationCoordinate2D {
    return CLLocationCoordinate2D(
      latitude: coordinates.latitude,
      longitude: coordinates.longitude
    )
  }

  struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
  }
}
