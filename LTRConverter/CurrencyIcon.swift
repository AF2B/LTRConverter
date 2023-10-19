//
//  CurrencyIcon.swift
//  LTRConverter
//
//  Created by André Filipe Fonsêca Borba on 18/10/23.
//

import SwiftUI

struct CurrencyIcon: View {
    @State var currencyImage: String
    @State var currencyText: String
    
    var body: some View {
            ZStack {
                Image(currencyImage)
                    .resizable()
                    .scaledToFit()
                
                VStack {
                    Spacer()
                    Text(currencyText)
                        .padding(3)
                        .font(.caption)
                        .background(.brown.opacity(0.75))
                }
            }
            .padding(3)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            .background(.brown)
            .cornerRadius(25)
    }
}

#Preview {
    CurrencyIcon(currencyImage: "copperpenny", currencyText: "Copper Penny")
        .previewLayout(.sizeThatFits)
}
