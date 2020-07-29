//
//  HackerNewsData.swift
//  H4XOR-News
//
//  Created by Gobble Veda on 7/28/20.
//  Copyright © 2020 Gobble Veda. All rights reserved.
//

import Foundation

struct HackerNewsData: Decodable {
    let  hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
