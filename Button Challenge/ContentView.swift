//
//  ContentView.swift
//  Button Challenge
//
//  Created by McKenzie, Cameron - Student on 9/16/25.
//

import SwiftUI

struct ContentView: View {
    @State private var newName: String = ""
    @State private var blueBut = 0
    @State private var greenBut = 0
    @State private var redBut = 0
    @State private var totalColor: Color = .black
    var total: Int { blueBut + greenBut + redBut }
    var body: some View {
        
        
        
        
        VStack(spacing: 30){
            TextField("Enter your name", text: $newName)
                .textFieldStyle(.automatic)
                .font(.headline)
            Text(newName)
                .foregroundStyle(.black)
                .font(.title)
            
            Divider()
            
            Text("\(total)")
                .font(.system(size: 100, weight: .bold))
                .foregroundColor(totalColor)
            
            HStack(spacing :25){
                Button {
                blueBut += 1
                    totalColor = .blue
                } label: {
                    Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.blue)
                    .overlay {
            Text("\(blueBut)")
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .foregroundStyle(.white)
                        }
                }
                
                Button {
                    greenBut += 2
                    totalColor = .green
                } label: {
                    Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.green)
                    .overlay {
                Text("\(greenBut)")
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .foregroundStyle(.white)
                        
                        }
                }
                Button {
                    redBut += 3
                    totalColor = .red
                } label: {
                    Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.red)
                    .overlay {
                Text("\(redBut)")
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .foregroundStyle(.white)
                    }
                }
            }
        }
        
        .padding()

    }
}

#Preview {
    ContentView()
}
