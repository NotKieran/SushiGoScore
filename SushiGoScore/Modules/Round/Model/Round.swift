//
//  Round.swift
//  SushiGoScore
//
//  Created by Kieran Hall on 12/08/2020.
//  Copyright © 2020 Kieran Hall. All rights reserved.
//

import Foundation

class Round: ObservableObject {
    var cards: [Card]
    @Published var cardAmounts: [Card: Int] {
        didSet {
            roundScore = cardAmounts.compactMap { $0.getScore(amount: $1) }.reduce(0, +)
        }
    }
    @Published var roundScore: Int

    init(cards: [Card], roundScore: Int = 0) {
        self.cards = cards
        self.cardAmounts = cards.reduce(into: [Card: Int]()) {
            $0[$1] = 0
        }
        self.roundScore = roundScore
    }
}
