//
//  TagDetail.swift
//  SciTAG
//
//  Created by Chuqiao Gong on 30/01/2021.
//

import SwiftUI

struct CreateTag: View {
    
    
    var types   = ["Cryotubes", "Other Freezer labels", "More options to be added"]
    
    @State var sampleName = ""
    @State var user = ""
    @State var description = "More Info .."
    @State var price = ""
    @State var date = Date()
    @State var addinfo: String = ""
    @State private var labelIndex = 0
    @State var quantity = 2
    @State var labelSeriesEnabled = false
    
    var body: some View {
        /**
         use navigationView multiple times will make view is in the middle instead of in the top
         Ref:https://stackoverflow.com/questions/56528361/swiftui-view-is-in-the-middle-instead-of-in-the-top
         */
        //  NavigationView {
        Form {
            Section(header: Text("Type") ){
                Picker (selection: $labelIndex, label: Text("Label type")) {
                    ForEach(0 ..< types.count) {
                        Text(self.types[$0]).tag($0)
                    }
                }
            }
        
            Section(header: Text("General")) {
                DatePicker("Date", selection: $date, displayedComponents: .date)
                TextField("Sample Name", text: $sampleName)
                TextField("User", text: $user)
            
            }
            
            Section(header: Text("Series")) {
                Toggle(isOn: $labelSeriesEnabled) {
                    Text("Create a label series:")
                }
                if labelSeriesEnabled {
                    Stepper(value: $quantity, in: 2...1000) {
                        Text("Numer of labels: \(quantity)")
                    }
                }
            }
            Section(header: Text("Description")) {
                TextEditor(text: $description)
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
       
            
        }.navigationTitle("New Label")
        // }
    }
    
    func GenarateLabel (){
        
    }
   
}

struct CreateTag_Previews: PreviewProvider {
    static var previews: some View {
        CreateTag()
    }
}
