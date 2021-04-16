//
//  LandmarkDetail.swift
//  SwiftUI-1
//
//  Created by Moazam Mir on 1/22/21.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData : ModelData
    var landmark : Landmark
    
    var landmarkIndex : Int {
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea(edges : .top)
            
            CircleImage(image: landmark.image)
                .offset( y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                HStack {

                    Text(landmark.name)
                        .font(.title)
                        .foregroundColor(.primary)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)

                             }


                Text(landmark.name)
                    .font(.title)
                    .fontWeight(.thin)
                    .foregroundColor(.blue)
                    .padding()
                HStack {
                    Text(landmark.park)
                        
                        .fontWeight(.light)
                    Spacer()
                    Text(landmark.state)
                        
                }
                
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
    
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    static var previews: some View {
        LandmarkDetail(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
}
