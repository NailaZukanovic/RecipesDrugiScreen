//
//  RecepiesView.swift
//  Recepti
//
//  Created by MacLab6 on 25.10.22..
//

import SwiftUI

struct RecepiesView: View {
    @StateObject var wm = RecipesViewModel()
    var category: Category
    var body: some View {
        ScrollView(){
            Text(category.strCategory).bold().font(.title).foregroundColor(.brown)
            VStack(spacing:30){
                ForEach(
                    wm.meals, id: \.self.idMeal
                ){ recipes in
                    RecipeCardView(meals:recipes)
                }
            }.padding(30)}.onAppear{
                wm.fetchRecipes(category: category)
            }
        
    }
}

struct RecepiesView_Previews: PreviewProvider {
    static var previews: some View {
        RecepiesView(category: Category.example)
    }
}
