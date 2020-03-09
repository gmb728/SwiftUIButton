//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by Chang Sophia on 3/7/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(){
           ZStack{
                 Rectangle()
                     .scaledToFill()
                     Image("4Birds")
                         .resizable()
                         .scaledToFit()
                         VStack{
                         Text("Special Sale!")
                         .foregroundColor(.white)
                         .font(.system(.largeTitle))
                         .fontWeight(.black)
                         .shadow(color: .pink, radius: 10, x: 10, y: 0)
    
                     Text("Choose Your Own Bird!")
                         .foregroundColor(.white)
                         .font(.system(.largeTitle))
                         .fontWeight(.black)
                         .offset(x:10, y:10)
                             .shadow(color: .pink, radius: 10, x: 10, y: 0)
                             
                     }
                     }
            VStack(alignment: .leading, spacing: 10){
            CardView(image: "Lovey", name: "Lovey", price:"US$100")
             CardView(image: "Fanboy", name: "Fanboy", price:"US$80")
             CardView(image: "Crazy Eyes", name: "Crazy Eyes", price:"US$50")
             CardView(image: "Lance", name: "Lance", price:"US$500")
        }
       .padding()
    }
          
  }
 
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
