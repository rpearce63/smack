//
//  Channel.swift
//  smack
//
//  Created by Rick on 3/30/18.
//  Copyright © 2018 Rick Pearce. All rights reserved.
//

import Foundation

struct Channel: Codable {
    var id: String
    var description: String
    var name: String
    var v: Int
    private enum CodingKeys: String, CodingKey {
        case id = "_id"
        case description
        case name
        case v = "__v"
    }
}
