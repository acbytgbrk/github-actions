//
//  Untitled.swift
//  Github_Actions
//
//  Created by Tuğberk Acabey on 23.10.2025.
//

import SwiftUI

// FIRST PAGE
struct ContentView: View {
    @State private var drinks = ["Coca-Cola", "Pepsi", "Sprite", "Dr. Pepper"]
    
    var body: some View {
        
        NavigationStack {
            VStack {
                List {
                    ForEach(drinks, id:\.self) { drink in
                        NavigationLink(destination: ContentDetailView(drinkName:drink)) {
                            Text(drink)
                        }
                    }
                    .onDelete(perform: deleteItem)
                }
                Button("New added drinks") {
                    drinks.append("New Coffee \(drinks.count + 1)")
                }
            }
        }
    }
    func deleteItem(at offsets: IndexSet) {
        drinks.remove(atOffsets: offsets)
    }
}
