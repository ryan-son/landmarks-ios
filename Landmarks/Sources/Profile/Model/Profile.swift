//
//  Profile.swift
//  Landmarks
//
//  Created by Geonhee on 2022/09/19.
//

import Foundation

struct Profile {
  var username: String
  var prefersNotifications = true
  var seasonalPhoto = Season.winter
  var goalDate = Date()

  static let `default` = Self(username: "g_kumar")

  enum Season: String, CaseIterable, Identifiable {
    case spring = "🌷"
    case summer = "🌞"
    case autumn = "🍂"
    case winter = "⛄️"

    var id: String {
      return rawValue
    }
  }
}
