//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Geonhee on 2022/09/19.
//

import SwiftUI

struct ProfileHost: View {
  @State private var draftProfile = Profile.default

  var body: some View {
    VStack(alignment: .leading, spacing: 20) {
      ProfileSummary(profile: draftProfile)
    }
    .padding()
  }
}

struct ProfileHost_Previews: PreviewProvider {
  static var previews: some View {
    ProfileHost()
      .environmentObject(ModelData())
  }
}
