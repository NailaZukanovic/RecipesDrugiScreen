//
//  RecipesViewModel.swift
//  Recepti
//
//  Created by MacLab6 on 27.10.22..
//

import Foundation
import Combine

class RecipesViewModel: ObservableObject{
    @Published var meals: [Meals] = []
    var recipesCancellables = Set<AnyCancellable>()
    private let dataService = RecepiesData.instance
    
    init(){
        addSubcriber()
    }
    
    private func addSubcriber(){
        dataService.$meals.sink { [weak self]meals in
            self?.meals = meals
        }.store(in: &recipesCancellables)
    }
    
    public func fetchRecipes(category: Category){
        dataService.fetchRecipesByCategory(category: category)
    }
}
