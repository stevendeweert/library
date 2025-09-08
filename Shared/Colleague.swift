//
//  Colleague.swift
//  iOS
//
//  Created by Steven De Weert on 08/09/2025.
//

import Foundation

struct Colleague: Identifiable {
    
    let id = UUID()
    
    var firstName: String
    var lastName: String
    
    var isActive: Bool
    
}

extension Colleague {
    
    var fullName: String {
        
        "\(firstName) \(lastName)"
        
    }
    
}
