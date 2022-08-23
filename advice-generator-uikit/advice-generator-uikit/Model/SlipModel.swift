//
//  SlipModel.swift
//  advice-generator-uikit
//
//  Created by Gabriel Santiago on 23/08/22.
//

import Foundation


struct Slip: Codable {
    
    let slip_id: Int
    let advice: String
}

struct SlipModel {
    
    let slip: Slip
    
}
