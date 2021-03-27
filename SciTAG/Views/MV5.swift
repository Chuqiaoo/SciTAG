//
//  TagV3.swift
//  SciTAG
//  unused code, keep it for future reference
//  Created by Marta on 24/03/2021.
//

import Combine
import SwiftUI

//class Label: ObservableObject {
   
//    var didChange = PassthroughSubject<Void,Never>()
//}

struct MV5: View {
    //@ObservedObject var order = Label()
    @State private var labelIndex = 0
    @State private var date = Date()
    @State var name: String = ""
    @State var user: String = ""
    @State var addinfo: String = ""
    @State var quantity = 2
    @State var labelSeriesEnabled = false
    
    var types   = ["Cryotubes", "Other Freezer labels", "More options to be added"]
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        //formatter.dateStyle = .short
        formatter.dateFormat = "dd-MM-yyyy"
        return formatter
    }()
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker (selection: $labelIndex, label: Text("Label type")) {
                        ForEach(0 ..< types.count) {
                            Text(self.types[$0]).tag($0)
                                //.font(.headline)
                            
                        }
                    }
                }
                
                Section {
                
                    //Text("Date")
                    // .font(.headline)
                    DatePicker("Date", selection: $date, displayedComponents: .date)
                    //Text("Date is \(date, formatter: dateFormatter)")
                    //Text("Date2 is \(date)")
                        //.foregroundColor(Color(red: 252 / 255, green: 81 / 255, blue: 133 / 255))
                        //.padding(.all)
                    //.background(Color(red: 239.0/255.0, green: 243.0/255.0, blue:244.0/255.0, opacity: 1.0))
                    //.cornerRadius(5.0)
                
                    //Text("Sample name")
                    //    .font(.headline)
                    TextField("Sample Name", text: $name).padding(.all)
                    //    .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue:244.0/255.0, opacity: 1.0))
                    //    .cornerRadius(5.0)
                
                
                    //Text("Sample name")
                    //    .font(.headline)
                    TextField("User name", text: $user).padding(.all)
                    //    .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue:244.0/255.0, opacity: 1.0))
                    //    .cornerRadius(5.0)
                    
                    //Text("Sample name")
                    //    .font(.headline)
                    TextField("Additional information", text: $addinfo).padding(.all)
                    //    .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue:244.0/255.0, opacity: 1.0))
                    //    .cornerRadius(5.0)
                    

                }
                Section {
                    
                    Toggle(isOn: $labelSeriesEnabled) {
                        Text("Create a label series:")
                    }
                    if labelSeriesEnabled {
                            
                        Stepper(value: $quantity, in: 2...1000) {
                            Text("Numer of labels: \(quantity)")
                        }
                    }
                }
                
                Section {
                    Button(action: {
                        self.GenarateLabel()
                    }) {
                        Text("Done")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .foregroundColor(Color(red: 252 / 255, green: 81 / 255, blue: 133 / 255))
                            .font(.system(size: 25.0, weight: .bold))
                            //.background(Color(red: 252 / 255, green: 81 / 255, blue: 133 / 255))
                    }
                }
                
            }
            //.padding(.top)
            //put everything to the top
           // Spacer()
            //.padding(.top)
            
        }
        .navigationBarTitle(Text("New label"),displayMode: .inline)
    }
    
    func GenarateLabel (){
        
    }
}


struct MV5_Previews: PreviewProvider {
    static var previews: some View {
        MV5()
    }
}
