//
//  RecipeCardView.swift
//  Recepti
//
//  Created by MacLab6 on 27.10.22..
//

import SwiftUI

struct RecipeCardView: View {
    @State private var showSheet = false;
    var meals: Meals
    var body: some View {
        VStack(alignment:.leading,spacing:0){
            AsyncImage(
                url: URL(string: meals.strMealThumb)
            ){image in
                image.resizable().scaledToFit()
            }placeholder: {
                ProgressView()
            }
            
            Text(meals.strMeal).font(.title).lineLimit(2).padding()
        }.background(.white).cornerRadius(16).shadow(radius: 8)
            .onTapGesture {
                showSheet = true
            }.sheet(isPresented: $showSheet){
                Text(meals.strMeal)
            }
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(meals: Meals.example)
    }
}
