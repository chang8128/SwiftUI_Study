//
//  Landmark.swift
//  Landmarks
//
//  Created by 常志平 on 14/6/22.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
// You make the property private because users of the Landmarks structure care only about the image itself.
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
   
// You mark this property as private because you’ll use it only to create a public computed property in the next step.
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
