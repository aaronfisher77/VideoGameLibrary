//
//  Game.swift
//  videoGameLibrary
//
//  Created by Aaron Fisher on 9/10/18.
//  Copyright © 2018 Aaron Fisher. All rights reserved.
//

import Foundation


class Game {
    let title: String
    var checkedIn: Bool = true
    var dueDate: Date? = nil
    
    
    init(title: String) {
        self.title = title
    }
    
}


