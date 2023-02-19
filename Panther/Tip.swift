//
//  Tip.swift
//  Panther
//
//  Created by Juan Ramirez on 19.02.23.
//

import Foundation

struct Tip: Decodable {
  let text: String
  let children: [Tip]?
}
