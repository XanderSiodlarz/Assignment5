//
//  AdvantureLogic.swift
//  MyAdventure
//
//  Created by Xander The Boss on 6/25/25.
//
import Foundation

struct AdventureLogic {
    var index: Int = 1
    
    let statement = [
        Statement("You have happened upon two treasure maps. One goes through the mountains. The other, the desert. Your journey begins. The choice is yours.", "Mountains", "Desert"),
        Statement("You have chosen to go through the mountains. Well, on your way up the mountain, there was an avalanche. You are safe as of now. Do you wish to continue?", "Go back home", "Continue on"),
        Statement("You have chosen to go through the Desert. Well, on your way through the desert, you realized you won't have enough water to make it to the treasure and back. What do you do?", "Go back home", "Continue on and hope there is a water source"),
        Statement("You have decided to go back home. Don't sweat it, you can always try again later on.", "Try again", "Goodluck"),
        Statement("As you push forward, you see that the avalanche moved some rubble out of the way, making the treasure visible. Congratulations!", "Try again", "Return Home"),
        Statement("You have decided to go back home. Don't sweat it, you can always try again later on.", "Try again", "Goodluck"),
        Statement("As you push forward, you see a water source! After refilling your supply you journey on and find the treasure. Congratulations!", "Try again", "Return Home"),
    ]
    
    mutating func increaseIndex(_ resp: String) {
        if index <= statement.count/2 {
            if resp == statement[index - 1].o_t {
                index *= 2
                index += 1
            }
            else {
                index *= 2
            }
        }
        else {
                index = 1
        }
    }
    
    func getNextStatement() -> String {
        return statement[index - 1].statement
    }
    
    func getOptionOne() -> String {
        return statement[index - 1].o_o
    }
    
    func getOptionTwo() -> String {
        return statement[index - 1].o_t
    }
    
    func getImageName() -> Int {
        return index
    }
}
