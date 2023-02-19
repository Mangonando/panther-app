//
//  PantherApp.swift
//  Panther
//
//  Created by Juan Ramirez on 14.02.23.
//

import SwiftUI

@main
struct PantherApp: App {
  //To make sure it stays alive. @StateObject. Used when we want to keep an object alive
  @StateObject var locations = Locations()
  
  var body: some Scene {
    WindowGroup {
      TabView {
        NavigationView {
          ContentView(location: locations.primary)
        }
        .tabItem {
          Image(systemName: "airplane.circle.fill")
          Text("Discover")
        }
        
        NavigationView {
          WorldView()
        }
        .tabItem {
          Image(systemName: "star.fill")
          Text("Locations")
        }
        
        NavigationView {
          TipsView()
        }
        .tabItem {
          Image(systemName: "list.bullet")
          Text("Tips")
        }
      }
      .environmentObject(locations)
    }
  }
}
