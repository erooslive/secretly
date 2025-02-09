//
//  Comment.swift
//  Secretly
//
//  Created by Fernanda Hernandez on 27/06/21.
//  Copyright © 2021 3zcurdia. All rights reserved.
//

import Foundation

struct Comment: Restable {
    var id: Int?
    let content: String
    let createdAt: Date?
    let updatedAt: Date?
    let author: Author?
    
    init(content: String) {
        self.id = nil
        self.content = content
        self.createdAt = nil
        self.updatedAt = nil
        self.author = nil
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(content, forKey: .content)
    }

}

