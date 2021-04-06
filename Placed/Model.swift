//
//  Model.swift
//  Placed
//
//  Created by Giovanni Luidi Bruno on 06/04/21.
//

import Foundation


struct Model {
    var quiz: Quiz
    
    struct Quiz {
        let question: String
        let wrongAlternatives: [String]
        let correctAlternative: String
        
        var allAlternatives: [String] { return wrongAlternatives + [correctAlternative] }
    }
}
