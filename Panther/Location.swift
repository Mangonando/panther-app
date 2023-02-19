//
//  Location.swift
//  Panther
//
//  Created by Juan Ramirez on 15.02.23.
//

import Foundation

struct Location: Decodable, Identifiable {
  let id: Int
  let name: String
  let country: String
  let description: String
  let more: String
  let latitude: Double
  let longitude: Double
  let heroPicture: String
  let advisory: String
  
  static let example = Location(id: 1, name: "Great Smokey Mountains", country: "USA", description: "Nice place", more: "more stuff here", latitude: 35.6532, longitude: -83.5070, heroPicture: "smokies", advisory: "Beware of bears!!")
}
