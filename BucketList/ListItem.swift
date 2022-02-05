//
//  ListItem.swift
//  BucketList
//
//  Created by Priyanka Bhatia on 06/02/2022.
//

import Foundation

struct ListItem: Hashable, Codable {
    var id: Int
    var name: String
    var category: String
    var state: String
    var description: String
}
