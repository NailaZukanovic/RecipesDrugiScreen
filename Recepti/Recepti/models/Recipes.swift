//
//  Recipes.swift
//  Recepti
//
//  Created by MacLab6 on 27.10.22..
//

import Foundation


struct RecipesResponse: Codable {
    let meals: [Meals]
}
struct Meals: Codable {
    let strMeal, strMealThumb, idMeal: String
    static let example: Meals = Meals(strMeal: "Beef and Mustard Pie", strMealThumb: "https://www.themealdb.com/images/media/meals/sytuqu1511553755.jpg", idMeal: "52874")
}
