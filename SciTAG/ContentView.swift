//
//  ContentView.swift
//  SciTAG
//
//  Created by Chuqiao Gong on 25/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            // Todo: change the color based on the template
            Color(red: 245 / 255, green: 245 / 255, blue: 245 / 255)
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                // replace with the real logo image
                // image size is tricky
                Image("star")
                Spacer()
                Button(action: {
                    
                }, label: {
                    //Todo: change
                    Text("Label 1")
                }).padding()
                .padding([.leading, .trailing], 40)
                .foregroundColor(.white)
                .background(Color(red: 252 / 255, green: 81 / 255, blue: 133 / 255))
                .cornerRadius(25)
                .font(.system(size: 18, weight: .bold, design: .default))
                
                Button(action: {
                    
                }, label: {
                    Text("Label 2")
                }).padding()
                .padding([.leading, .trailing], 40)
                .foregroundColor(.white)
                .background(Color(red: 252 / 255, green: 81 / 255, blue: 133 / 255))
                .cornerRadius(25)
                .font(.system(size: 18, weight: .bold, design: .default))
                
                Button(action: {
                    
                }, label: {
                    Text("Label 3")
                }).padding()
                .padding([.leading, .trailing], 40)
                .foregroundColor(.white)
                .background(Color(red: 252 / 255, green: 81 / 255, blue: 133 / 255))
                .cornerRadius(25)
                .font(.system(size: 18, weight: .bold, design: .default))
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
