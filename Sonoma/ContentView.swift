//
//  ContentView.swift
//  Sonoma
//
//  Created by 이재원 on 2023/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("New Jam").font(.Tasa.bold.size(size: 33))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
