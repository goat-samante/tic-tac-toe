//
//  ContentView.swift
//  tic tac toe
//
//  Created by Samuel Amante on 11/15/24.
//

import SwiftUI

struct ContentView: View {
    @State private var moves = Array(repeating: "", count: 9)
    var body: some View {
        VStack {
            LazyVGrid(columns: Array(repeating: GridItem(.fixed(120)), count: 3), content: {
                ForEach(0..<9) { index in
                    ZStack {
                        Color.blue
                        Text(moves[index])
                            .font(.system(size: 90))
                            .fontWeight(.heavy)
                    }
                    .frame(width: 120, height: 120, alignment: .center)
                    .cornerRadius(30)
                    .onTapGesture {
                        moves[index] = "X"
                    }
                }
            })
            Text("Tic Tac Toe")
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
