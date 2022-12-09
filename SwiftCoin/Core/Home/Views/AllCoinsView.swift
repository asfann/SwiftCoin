//
//  AllCoinsView.swift
//  SwiftCoin
//
//  Created by Asf on 09.12.2022.
//

import SwiftUI

struct AllCoinsView: View {
    
    @StateObject var viewModel: HomeViewModel
    var body: some View {
        VStack(alignment: .leading){
            Text("All Coins")
                .font(.headline)
                .padding()
            
            HStack{
                Text("Coin")
                
                Spacer()
                
                Text("Prices")
            }
            .font(.caption)
            .foregroundColor(.gray)
            .padding(.horizontal)
            
            ScrollView{
                VStack{
                    ForEach(viewModel.coins) { coin in
                        CoinRowView(coin: coin)
                        
                    }
                }
            }
        }
        
    }
}
//
//struct AllCoinsView_Previews: PreviewProvider {
//    static var previews: some View {
//        AllCoinsView()
//    }
//}
