//
//  Tag.swift
//  SciTAG
//  unused code for now, working with Yan's code(YanV3), keep it for future reference
//  Created by Chuqiao Gong on 25/03/2021.
//

import Foundation
import SwiftUI
import Combine

class Tag: ObservableObject {
    
    var didChange = PassthroughSubject<Void, Never>()
    
    static let types = ["Cryotubes", "Other Freezer labels", "More options to be added"]
    
    var type = 0 {didSet {update()}}
    
    var name = "" {didSet {update()}}
    
    var date: Date = Date() {
        didSet {
            date_formate(slectedate: date)
        }
    }
    
    var user = "" {didSet {update()}}
    
    var description = "" {didSet {update()}}
    
    var labelSeriesEnabled = false {didSet {update()}}
    
    var labelSeries = 2 {didSet {update()}}
    
    func update(){
        didChange.send(())
    }
    
    func date_formate(slectedate: Date) {
        let formatter = DateFormatter()
        formatter.dateFormat = "d MMM y"
        _ = formatter.string(from: slectedate)
    }
}
