//
//  MenuList.swift
//  SciTAG
//
//  Created by Chuqiao Gong on 30/01/2021.
//

import SwiftUI

// todo: rename this struct
struct MenuList: View {
    var body: some View {
        
        
        ZStack{
            // Todo: change the color based on the template
            Color(red: 245 / 255, green: 245 / 255, blue: 245 / 255)
                .ignoresSafeArea()
                        
                        VStack{
                            Spacer()
                            // replace with the real logo image
                            // image size is tricky
                            Image("logo")
                            Spacer()
                            Button(action: {
                                
                            }, label: {
                                //Todo: change
                                Text("New labels")
                            }).padding()
                            .padding([.leading, .trailing], 40)
                            .foregroundColor(.white)
                            .background(Color(red: 252 / 255, green: 81 / 255, blue: 133 / 255))
                            .cornerRadius(25)
                            .font(.system(size: 18, weight: .bold, design: .default))
                            .frame(minWidth: 0, maxWidth: .infinity)
                            
                            Button(action: {
                                
                            }, label: {
                                Text("Recent labels")
                            }).padding()
                            .padding([.leading, .trailing], 40)
                            .foregroundColor(.white)
                            .background(Color(red: 252 / 255, green: 81 / 255, blue: 133 / 255))
                            .cornerRadius(25)
                            .font(.system(size: 18, weight: .bold, design: .default))
                            
                            Button(action: {
                                
                            }, label: {
                                Text("Printer setting")
                            }).padding()
                            .padding([.leading, .trailing], 40)
                            .foregroundColor(.white)
                            .background(Color(red: 252 / 255, green: 81 / 255, blue: 133 / 255))
                            .cornerRadius(25)
                            .font(.system(size: 18, weight: .bold, design: .default))
                            
                            Button(action: {
                                
                            }, label: {
                                Text("App setting")
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

struct MenuList_Previews: PreviewProvider {
    static var previews: some View {
        MenuList()
    }
}
