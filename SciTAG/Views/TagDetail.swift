//
//  TagDetail.swift
//  SciTAG
//
//  Created by Chuqiao Gong on 30/01/2021.
//

import SwiftUI

struct TagDetail: View {
    
    
    let dateFormatter: DateFormatter = {
            let formatter = DateFormatter()
            //formatter.dateStyle = .short
            formatter.dateFormat = "dd-MM-yyyy"
            return formatter
        }()
    
    @State var sampleName = ""
    @State var user = ""
    @State var description = "More Info .."
    @State var price = ""
    @State var date = Date()
    
    var body: some View {
        /**
           use navigationView multiple times will make view is in the middle instead of in the top
           Ref:https://stackoverflow.com/questions/56528361/swiftui-view-is-in-the-middle-instead-of-in-the-top
         */
        //  NavigationView {
        Form {
            Section(header: Text("General")) {
                DatePicker("Date", selection: $date, displayedComponents: .date)
                TextField("Sample Name", text: $sampleName)
                TextField("User", text: $user)
                //Text("Date is \(date, formatter: dateFormatter)")
                //Text("Date2 is \(date)")
            }
            
            Section(header: Text("Description")) {
                TextEditor(text: $description)
            }
            
            Section {
                Button(action: {
                    print("saved ..")
                }) {
                    Text("Save").padding()
                        .padding([.leading, .trailing], 70)
                        .foregroundColor(Color(red: 252 / 255, green: 81 / 255, blue: 133 / 255))
                        .font(.system(size: 18, weight: .bold, design: .default))
                        .frame(minWidth: 0, maxWidth: .infinity)
                }
            }
        }.navigationTitle("New Label")
        // }
    }
}

struct TagDetail_Previews: PreviewProvider {
    static var previews: some View {
        TagDetail()
    }
}
