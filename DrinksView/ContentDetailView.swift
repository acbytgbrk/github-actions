//
//  ContentDetailView.swift
//  Github_Actions
//
//  Created by Tuğberk Acabey on 23.10.2025.
//

import SwiftUI
// DETAIL PAGE
struct ContentDetailView: View {
    var drinkName: String
    var body: some View {
        VStack {
            Text("drinkName")
        }
        .navigationTitle(drinkName)
    }
}
