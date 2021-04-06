//
//  ViewModel.swift
//  Placed
//
//  Created by Giovanni Luidi Bruno on 06/04/21.
//

import Foundation


class ViewModel: ObservableObject {
    @Published var model: Model
    
    init() {
        let quiz = Model.Quiz(
            question: "How many countries are there in the world?",
            wrongAlternatives: ["111 countries", "157 countries", "98 countries"],
            correctAlternative: "195 countries"
        )
        model = Model(quiz: quiz)
    }
    
    func select(_ alternative: String) {
        
    }
}
