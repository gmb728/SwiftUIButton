//
//  CardView.swift
//  SwiftUIButton
//
//  Created by Chang Sophia on 3/7/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var image: String
    var name: String
    var price: String
  
    var body: some View {
        Button(action: {print("show me the bird")}) {
        HStack(alignment: .center){
                ZStack(){
                Rectangle()
                    .cornerRadius(20)
                    .scaledToFill()
                    .frame(width:100)
                    .foregroundColor(Color(.sRGB, red: 150/255, green: 100/255, blue: 120/255, opacity: 0.2))
                Image(image)
                .renderingMode(.original) //put first
                .resizable() //stretch
                .scaledToFit() //讓圖片維持比例但左右或上下留白
                .frame(width:100)
                
                    
                }
                Text(name)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(.black)
                Text(price)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                    .foregroundColor(.red)
                    .multilineTextAlignment(.trailing)
            
        }
       
       //在VStack外畫圓角與灰線
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
            .stroke(Color(.sRGB, red: 150/255, green: 100/255, blue: 120/255, opacity: 0.2), lineWidth:1)
            
        
    )}
        
}
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(image:"Lovey", name:"Lovey", price:"US$100")
    }
}

