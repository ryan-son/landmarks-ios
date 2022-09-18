//
//  Landmark.swift
//  Landmarks
//
//  Created by Geonhee on 2022/09/18.
//

import CoreLocation
import Foundation
import SwiftUI

struct Landmark: Hashable, Codable, Identifiable {
  var id: Int
  var name: String
  var park: String
  var state: String
  var description: String
  var isFavorite: Bool

  var category: Category
  enum Category: String, CaseIterable, Codable {
    case lakes = "Lakes"
    case rivers = "Rivers"
    case mountains = "Mountains"
  }

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
