//
//  TagV2.swift
//  SciTAG
//  unused code, keep it for future reference
//
//  Created by Chuqiao Gong on 27/02/2021.
//

import SwiftUI

struct CreateTagV2: View {
    @State var name: String = ""
    @State private var date = Date()
    @State var user = ""
    @State var description = ""
    
    var body: some View {
        VStack (alignment: .leading){
            // Image("logo")
            //   .resizable()
            //   .scaledToFill()
            //   .frame(height: 280)
            //   .clipped()
            
            Text("Date")
                .font(.headline)
            DatePicker("Date", selection: $date, displayedComponents: .date)
                .padding(.all)
                .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue:244.0/255.0, opacity: 1.0))
                .cornerRadius(5.0)
            
            Text("NAME")
                .font(.headline)
            TextField("Sample Name", text: $name).padding(.all)
                .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue:244.0/255.0, opacity: 1.0))
                .cornerRadius(5.0)
            
            Text("User")
                .font(.headline)
            TextField("User identification", text: $user).padding(.all)
                .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue:244.0/255.0, opacity: 1.0))
                .cornerRadius(5.0)
            
            Text("Description")
                .font(.headline)
            TextField("More info", text: $description).padding(.all)
                .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue:244.0/255.0, opacity: 1.0))
                .cornerRadius(5.0)
            
            Button(action: {
                print("saved ..")
            }) {
                Text("Save")
                    .padding()
                    .padding([.leading, .trailing], 70)
                    .foregroundColor(.white)
                    .background(Color(red: 252 / 255, green: 81 / 255, blue: 133 / 255))
                    .cornerRadius(25)
                    .font(.system(size: 18, weight: .bold, design: .default))
                    .frame(minWidth: 0, maxWidth: .infinity)
            }
            .padding(.top)
            //put everything to the top
            Spacer()    
            
        }.navigationTitle("New Label")
        
        .padding(.horizontal, 15.0)
    }
}

struct CreateTagV2_Previews: PreviewProvider {
    static var previews: some View {
        CreateTagV2()
    }
}
