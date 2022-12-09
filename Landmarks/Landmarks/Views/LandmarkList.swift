//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Anna Shuryaeva on 09.12.2022.
//

import SwiftUI

struct LandmarkList: View {
    
    
    var body: some View {
        NavigationView {
            List(landmarks) { landMark in
                NavigationLink {
                    LandmarkDetail(landmark: landMark)
                } label: {
                    LandmarkRow(landMark: landMark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
