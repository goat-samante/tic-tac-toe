//
//  ContentView.swift
//  tic tac toe
//
//  Created by Samuel Amante on 11/15/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            LazyVGrid(columns: Array(repeating: GridItem(.fixed(120)), count: 3), content: {
                Text("X")
                Text("X")
                Text("X")
                Text("X")
                Text("X")
                Text("X")
                Text("X")
                Text("X")
                Text("X")
            })
            Text("Tic Tac Toe")
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
