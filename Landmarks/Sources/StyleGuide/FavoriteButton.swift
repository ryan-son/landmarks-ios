//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Geonhee on 2022/09/18.
//

import SwiftUI

struct FavoriteButton: View {
  @Binding var isSet: Bool

  var body: some View {
    Button(action: { isSet.toggle() }) {
      Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
        .labelStyle(.iconOnly)
        .foregroundColor(isSet ? .yellow : .gray)
    }
  }
}

struct FavoriteButton_Previews: PreviewProvider {
  static var previews: some View {
    FavoriteButton(isSet: .constant(true))
  }
}
