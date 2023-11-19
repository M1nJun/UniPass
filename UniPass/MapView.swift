//

import Foundation
import SwiftUI
import MapKit

struct MapView: View {
    let userLocation = CLLocationCoordinate2D(latitude: 44.26025180688183, longitude: -88.39767362315015)
    let LU = CLLocationCoordinate2D(latitude: 44.261294508968994, longitude: -88.39888264546647)
    let curCoo = CLLocationCoordinate2D(latitude: 44.261202305576255, longitude: -88.39890142092968)
    
    @State private var camera: MapCameraPosition = .automatic

    var body: some View {
        Map(position: $camera) {
            Marker("Lawrence University", coordinate: LU)
            Annotation("Current Location", coordinate: userLocation){
                    ZStack{
                        Circle()
                            .frame(width: 32, height: 32)
                            .foregroundColor(.blue.opacity(0.25))
                        Circle()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                        Circle()
                            .frame(width: 12, height: 12)
                            .foregroundColor(.blue)
                    }
            }
        }
        .mapStyle(.imagery)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

