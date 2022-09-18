//
//  ModelData.swift
//  Landmarks
//
//  Created by Geonhee on 2022/09/18.
//

import Combine
import Foundation

final class ModelData: ObservableObject {
  @Published var landmarks: [Landmark] = load("landmarkData.json")
  var hikes: [Hike] = load("hikeData.json")

  var features: [Landmark] {
    return landmarks.filter(\.isFeatured)
  }

  var categories: [String: [Landmark]] {
    return Dictionary(
      grouping: landmarks,
      by: \.category.rawValue
    )
  }
}


func load<T: Decodable>(_ fileName: String) -> T {
  let data: Data

  guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
    fatalError("Couldn't find \(fileName) in main bundle.")
  }

  do {
    data = try Data(contentsOf: file)
  } catch {
    fatalError("Couldn't load \(fileName) from main bundle:\n\(error)")
  }

  do {
    let decoder = JSONDecoder()
    return try decoder.decode(T.self, from: data)
  } catch {
    fatalError("Couldn't parse \(fileName) as \(T.self):\n\(error)")
  }
}
