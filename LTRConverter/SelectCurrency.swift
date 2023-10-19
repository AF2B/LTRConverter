//
//  SelectCurrency.swift
//  LTRConverter
//
//  Created by André Filipe Fonsêca Borba on 18/10/23.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @State var gridLayout =  [GridItem(), GridItem(), GridItem()]
    @Binding var leftCurrency: Currency
    @Binding var rightCurrency: Currency
    
    var body: some View {
        ZStack {
            // background parchment image
            Image("parchment")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .background(.brown)
            
            VStack {
                // text
                Text("Select the currency you are starting with:")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                
                LazyVGrid(columns: gridLayout) {
                    ForEach(0..<5) { index in
                        if Currency.allCases[index] == leftCurrency {
                            CurrencyIcon(currencyImage: CurrencyImage.allCases[index].rawValue, currencyText: CurrencyText.allCases[index].rawValue)
                                .overlay(RoundedRectangle(cornerRadius: 25)
                                    .stroke(lineWidth: 3)
                                    .opacity(0.5))
                                .shadow(color: .black, radius: 9)
                        } else {
                            CurrencyIcon(currencyImage: CurrencyImage.allCases[index].rawValue, currencyText: CurrencyText.allCases[index].rawValue)
                        }
                    }
                }
                
                // text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                
                // currency icons
                
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
        }
    }
}

#Preview {
    SelectCurrency(leftCurrency: .constant(.silverPiece), rightCurrency: .constant(.goldPiece))
}
