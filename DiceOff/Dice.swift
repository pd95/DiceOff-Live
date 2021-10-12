//
//  Dice.swift
//  DiceOff
//
//  Created by Philipp on 12.10.21.
//

import Foundation

class Dice: Equatable, Identifiable, ObservableObject {
    @Published var value = 1
    @Published var changeAmount = 0.0

    var owner = Player.none
    let id = UUID()
    let row: Int
    let column: Int
    let neighbours: Int

    static func ==(lhs: Dice, rhs: Dice) -> Bool {
        lhs.id == rhs.id
    }

    init(row: Int, column: Int, neighbours: Int) {
        self.row = row
        self.column = column
        self.neighbours = neighbours
    }
}
