//
//  CardRowView.swift
//  SushiGoScore
//
//  Created by Kieran Hall on 12/08/2020.
//  Copyright © 2020 Kieran Hall. All rights reserved.
//
import os.log
import SwiftUI

struct CardRowView: View, OSLogging {
    var logInstance: OSLog { return createLog() }

    var card: Card
    var round: Round

    @State private var amount = 0

    var body: some View {
        HStack {
            Stepper("\(card.cardType.rawValue)", value: $amount, in: 0...20) {_ in
                self.setAmountInRound(newAmount: self.amount)
            }
            Text("\(amount)")
        }
    }
}

// MARK: - Private Helper Functions
private extension CardRowView {
    func setAmountInRound(newAmount: Int) {
        guard round.cardAmounts[self.card] != nil,
            round.cardAmounts[self.card] != newAmount else {
                return
        }
        round.cardAmounts[self.card] = newAmount
        os_log("🧮 %s = %d", log: logInstance, type: .info, card.cardType.rawValue, newAmount)
    }
}

// MARK: - Preview Struct
struct CardRowView_Previews: PreviewProvider {
    static private let testCard = Card(cardType: .dumpling)
    static private let testRound = Round(cards: [testCard])
    static var previews: some View {
        CardRowView(card: testCard, round: testRound)
    }
}
