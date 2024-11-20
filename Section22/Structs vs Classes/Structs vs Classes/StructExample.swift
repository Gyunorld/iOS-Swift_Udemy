//
//  StructExample.swift
//  Structs vs Classes
//
//  Created by 김민규 on 11/20/24.
//

import Foundation

struct StructHero {
    var name: String
    var universe: String
    
    mutating func reverseName() {
        self.name = String(self.name.reversed())
    }
    
}


