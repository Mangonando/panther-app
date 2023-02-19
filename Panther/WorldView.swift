//
//  WorldView.swift
//  Panther
//
//  Created by Juan Ramirez on 18.02.23.
//

import MapKit
import SwiftUI

struct WorldView: View {
  @EnvironmentObject var locations: Locations
  // @State is a property wrapper to keep the variable alive when it is changing. MK and CL are part of the MapKit import
  @State var region = MKCoordinateRegion(
    center: CLLocationCoordinate2D(latitude: 52.5132131, longitude: 13.3682215),
    span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
  )
  
  var body: some View {
    // $ is for two way binding. $region
    Map(coordinateRegion: $region,
      annotationItems: locations.places){
      location in
      MapAnnotation(coordinate:
        CLLocationCoordinate2D(latitude:
        location.latitude, longitude:
        location.longitude)) {
        NavigationLink(destination: ContentView(location: location )) {
          Image(location.country)
            .resizable()
            .cornerRadius(10)
            .frame(width: 80, height: 40)
            .shadow(radius: 3)
        }
      }
    }
    .navigationTitle("Locations")
  }
}

struct WorldView_Previews: PreviewProvider {
  static var previews: some View {
      WorldView()
  }
}
