//
//  Statement.swift
//  MyAdventure
//
//  Created by Xander The Boss on 6/25/25.
//
import Foundation
struct Statement {
    init(_ stat: String, _ option_one: String, _ option_two: String) {
        statement = stat
        o_o = option_one
        o_t = option_two
    }
    
    var statement: String
    var o_o: String
    var o_t: String
}
