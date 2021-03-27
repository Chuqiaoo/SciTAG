//
//  TagV3.swift
//  SciTAG
//  unused code, keep it for future reference
//  Created by JunYan on 24/03/2021.
//

import Combine
import SwiftUI

struct YanV3: View {
    
    @ObservedObject var tag = Tag()
    
    var body: some View {
        VStack (alignment: .leading){
            Form {
                Section {
                    Picker ("Select your label type", selection: $tag.type){
                        ForEach(0 ..< Tag.types.count){
                            Text(Tag.types[$0]).tag($0)
                        }
                    }
                }
                
                Section {
                    TextField("Sample name", text: $tag.name)
                    DatePicker("Date",selection: $tag.date, displayedComponents: .date)
                    TextField("User name", text: $tag.user)
                    
                }
                
                Section(header: Text("Description")) {
                    TextField("More info...", text: $tag.description)
                }
                
                Section {
                    Toggle(isOn: $tag.labelSeriesEnabled) {
                        Text ("Create a label series:")
                    }
                    if tag.labelSeriesEnabled {
                        Stepper(value: $tag.labelSeries, in: 2...1000) {
                            Text("Numer of labels: \(tag.labelSeries)")
                        }
                    }
                }
                
                Section {
                    Button(action: {
                        print("saved ..")
                        //self.GenarateLabel()
                    }) {
                        Text("Done").padding()
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .foregroundColor(Color(red: 252 / 255, green: 81 / 255, blue: 133 / 255))
                            .font(.system(size: 25.0, weight: .bold))
                    }
                }
                
            }
            //put everything to the top
            Spacer()
                .navigationBarTitle(Text("Create labels"))
        }
    }
    
    //if DEBUG
    struct YanV3_Previews: PreviewProvider {
        static var previews: some View {
            YanV3()
        }
    }
}
