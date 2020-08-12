//
//  RoundView.swift
//  SushiGoScore
//
//  Created by Kieran Hall on 19/04/2020.
//  Copyright © 2020 Kieran Hall. All rights reserved.
//

import SwiftUI

struct RoundView: View {
    @ObservedObject var round = Round(cards: [Card(cardType: .dumpling)])

    var body: some View {
        NavigationView {
            VStack {
                List(round.cards, id: \.cardType.rawValue) { card in
                    CardRowView(card: card, round: self.round)
                }
            }.navigationBarTitle("Round Score \(round.roundScore)")
        }
    }
}

struct RoundView_Previews: PreviewProvider {
    static var previews: some View {
        RoundView()
    }
}
