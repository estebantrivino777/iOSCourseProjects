//
//  PostData.swift
//  H4CK0R News SwiftUI
//
//  Created by Esteban Rafael Trivino Guerra on 7/02/22.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String { objectID }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
