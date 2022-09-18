//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Geonhee on 2022/09/19.
//

import SwiftUI

struct CategoryHome: View {
  @EnvironmentObject var modelData: ModelData
  @State private var showingProfile = false

  var body: some View {
    NavigationView {
      List {
        modelData.features[0].image
          .resizable()
          .scaledToFill()
          .frame(height: 200)
          .clipped()
          .listRowInsets(EdgeInsets())

        ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
          if let landmarks = modelData.categories[key] {
            CategoryRow(categoryName: key, items: landmarks)
          }
        }
        .listRowInsets(EdgeInsets())
      }
      .listStyle(.inset)
      .navigationTitle("Featured")
      .toolbar {
        Button(action: { showingProfile.toggle() }) {
          Label("User Profile", systemImage: "person.crop.circle")
        }
      }
      .sheet(isPresented: $showingProfile) {
        ProfileHost()
          .environmentObject(modelData)
      }
    }
  }
}

struct CategoryHome_Previews: PreviewProvider {
  static var previews: some View {
    CategoryHome()
      .environmentObject(ModelData())
  }
}
