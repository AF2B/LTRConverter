//
//  ExchangeInfo.swift
//  LTRConverter
//
//  Created by André Filipe Fonsêca Borba on 17/10/23.
//

import SwiftUI

struct ExchangeInfo: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            // backgroundImage
            Image("parchment")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .background(.brown)
            
            VStack {
                // Title text
                Text("Exchange Rates")
                    .font(.largeTitle)
                
                // body text
                Text("Lorem ipsum dolor sit amet. Sit delectus sapiente sit blanditiis nemo a commodi modi aut architecto aperiam est deserunt voluptatibus eos laboriosam soluta. Qui numquam harum et eius autem rem neque quos sit dolorem voluptas et quaerat amet et consequuntur internos est sunt magnam! Et porro necessitatibus et sint ratione sit recusandae reiciendis quo veritatis maxime eum vero debitis sit omnis atque.")
                    .font(.title2)
                    .padding()
                
                // exchange rates
                ExchangeRate(leftImage: .goldpiece, text: "1 Gold Piece = 4 Gold Pennies", rightImage: .goldpenny)
                ExchangeRate(leftImage: .goldpenny, text: "1 Gold Penny = 4 Silver Pieces", rightImage: .silverpiece)
                ExchangeRate(leftImage: .silverpiece, text: "1 Silver Piece = 4 Silver Pennies", rightImage: .silverpenny)
                ExchangeRate(leftImage: .silverpenny, text: "1 Silver Penny = 100 Copper Pennies", rightImage: .copperpenny)
                
                // done button
                Button("Done") {
                    dismiss()
                }
                .font(.largeTitle)
                .padding(10)
                .foregroundColor(.white)
                .background(.brown)
                .cornerRadius(15)
            }
            .foregroundColor(.black)
        }
    }
}

#Preview {
    ExchangeInfo()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
