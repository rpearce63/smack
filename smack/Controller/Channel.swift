//
//  Channel.swift
//  smack
//
//  Created by Rick on 3/30/18.
//  Copyright © 2018 Rick Pearce. All rights reserved.
//

import Foundation

struct Channel : Decodable {
    public private(set) var channelTitle: String!
    public private(set) var channelDescription: String!
    public private(set) var id: String!
}
