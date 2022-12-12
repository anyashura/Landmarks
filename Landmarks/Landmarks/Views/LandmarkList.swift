//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Anna Shuryaeva on 09.12.2022.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landMark in
            (!showFavoritesOnly || landMark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favourites only")
                }
                ForEach(filteredLandmarks) { landMark in
                    NavigationLink {
                        LandmarkDetail(landmark: landMark)
                    } label: {
                        LandmarkRow(landMark: landMark)
                    }
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
