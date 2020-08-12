//
//  Card.swift
//  SushiGoScore
//
//  Created by Kieran Hall on 12/08/2020.
//  Copyright © 2020 Kieran Hall. All rights reserved.
//

import Foundation

struct Card: Hashable {
    let cardType: CardType

    func getScore(amount: Int) -> Int {
        switch cardType {
        case .dumpling:
            let scores = [0, 1, 3, 6, 10, 15]
            guard amount < scores.endIndex else {
                return scores.last ?? 0
            }
            return scores[amount]
        case .makiRoll:
            //TODO
            return 1
        case .tempura:
            //TODO
            return 1
        case .sashimi:
            //TODO
            return 1
        case .eggNigiri:
            //TODO
            return 1
        case .salmonNigiri:
            //TODO
            return 1
        case .squidNigiri:
            //TODO
            return 1
        case .pudding:
            //TODO
            return 1
        }
    }
}

enum CardType: String {
    case dumpling = "Dumpling"
    case makiRoll = "Maki Roll"
    case tempura = "Tempura"
    case sashimi = "Sashimi"
    case eggNigiri = "Egg Nigiri"
    case salmonNigiri = "Salmon Nigiri"
    case squidNigiri = "Squid Nigiri"
    case pudding = "Pudding"
}
