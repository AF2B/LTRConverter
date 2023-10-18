//
//  ExchangeRate.swift
//  LTRConverter
//
//  Created by André Filipe Fonsêca Borba on 17/10/23.
//

import SwiftUI

struct ExchangeRate: View {
    @State var leftImage: ImageResource
    @State var text: String
    @State var rightImage: ImageResource
    
    var body: some View {
        HStack {
            // left currency image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 34)
            
            // exchange text
            Text(text)
            
            // right currency image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 34)
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .goldpenny, text: "1 Gold Penny = 4 Silver Pieces", rightImage: .silverpiece)
        .previewLayout(.sizeThatFits)
}
