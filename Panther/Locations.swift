//
//  Locations.swift
//  Panther
//
//  Created by Juan Ramirez on 15.02.23.
//

import Foundation

class Locations: ObservableObject {
  let places: [Location]
  // computed property. A property which has its value then the property runs
  
  var primary: Location {
    //Read first index [0] from places array above
    places[0]
  }
  
  init() {
    // ! force app to crush if app is not able to find "locations"
    let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
    // ! crush app if it does not find data
    let data = try! Data(contentsOf: url)
    // Decode into an array of location object (.self)
    places = try! JSONDecoder().decode([Location].self, from: data)
  }
}
