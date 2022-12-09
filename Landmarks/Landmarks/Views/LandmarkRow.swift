//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Anna Shuryaeva on 09.12.2022.
//

import SwiftUI

struct LandmarkRow: View {
    var landMark: Landmark
    var body: some View {
        HStack {
            landMark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landMark.name)
            
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            LandmarkRow(landMark: landmarks[0])
            LandmarkRow(landMark: landmarks[1])
                
        }
        .previewLayout(.fixed(width: 300, height: 70))

    }
}
