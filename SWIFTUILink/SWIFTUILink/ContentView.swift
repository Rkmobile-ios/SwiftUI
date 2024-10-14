//
//  ContentView.swift
//  SWIFTUILink
//
//  Created by romilsheth on 13/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Link("Go to Apple", destination: URL(string:"https://apple.com")!)
                .buttonStyle(.borderless)
            Link("Call To Action", destination: URL(string:"https://apple.com")!)
                .buttonStyle(.bordered)
                .buttonBorderShape(.roundedRectangle)
                .controlSize(.regular)
            Link("Send an Email", destination: URL(string:"https://apple.com")!)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
                .tint(.pink)
            Link("Credo Academy", destination: URL(string:"https://apple.com")!)
                .buttonStyle(.plain)
                .padding()
                .border(.primary, width: 5)
            
            Link(destination: URL(string:"https://apple.com")!){
                HStack(spacing:16){
                    Image(systemName: "apple.logo")
                    Text("Apple Store")
                }
            }
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(Capsule().fill(Color.blue))
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
