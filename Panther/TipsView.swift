//
//  TipsView.swift
//  Panther
//
//  Created by Juan Ramirez on 19.02.23.
//

import SwiftUI

struct TipsView: View {
  let tips: [Tip]
  
  init() {
    // ! force app to crush if app is not able to find "locations"
    let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
    // ! crush app if it does not find data
    let data = try! Data(contentsOf: url)
    // Decode into an array of location object (.self)
    tips = try! JSONDecoder().decode([Tip].self, from: data)
  }
  
  var body: some View {
    List(tips, id: \.text, children: \.children) {
      tip in
      if tip.children != nil {
        Label(tip.text, systemImage: "quote.bubble").font(.headline)
      } else {
        Text(tip.text)
      }
    }
    .navigationTitle("Tips")
  }
}

struct TipsView_Previews: PreviewProvider {
  static var previews: some View {
    TipsView()
  }
}
