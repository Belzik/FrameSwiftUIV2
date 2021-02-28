//
//  CardsScreen.swift
//  FrameSwiftUI
//
//  Created by Александр Катрыч on 28.02.2021.
//

import SwiftUI

struct Card {
    let name: String
    let image: Image
}

extension Card: Identifiable {
    var id: String {
        return name
    }
}

final class CardScreenViewModel: ObservableObject {
    
    // MARK: - Properties
    
    @Published private(set) var cards = [
        Card(name: "Spades", image: Image("spades")),
        Card(name: "Clubs", image: Image("clubs")),
        Card(name: "Diamonds", image: Image("diamonds")),
        Card(name: "Hearts", image: Image("hearts"))
    ]
    
}

struct CardsScreen: View {
    
    @ObservedObject var viewModel: CardScreenViewModel = .init()
    @Binding var isOpenInfoCard: Bool
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.cards) { item in
                    CardListCell(card: item)
                }
                NavigationLink(destination: CardView(image: viewModel.cards[0].image),
                               isActive: $isOpenInfoCard) {
                    Text("")
                }.hidden()
            }
            .navigationBarTitle(Text("Cards"),
                                displayMode: .inline)
        }
    }
    
}

struct CardListCell: View {
    
    // MARK: - Properties
    
    let card: Card
    
    // MARK: - Body
    
    var body: some View {
        NavigationLink(destination: CardView(image: card.image)) {
            Text(card.name)
        }
    }
    
}

struct CardView: View {
    
    // MARK: - Properties
    
    let image: Image
    
    // MARK: - Body
    
    var body: some View {
        image
            .resizable()
            .frame(width: 200,
                   height: 200,
                   alignment: .center)
            .aspectRatio(contentMode: .fit)
    }
    
}
