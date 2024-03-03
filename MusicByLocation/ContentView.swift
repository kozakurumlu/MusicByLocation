//
//  ContentView.swift
//  MusicByLocation
//
//  Created by Kurumlu, Koza (RCH) on 03/03/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var locationHandler = LocationHandler()
    var body: some View {
        VStack {
            Text("\(locationHandler.lastKnownLocation)")
            Spacer()
            Button("Find Music", action: {
                locationHandler.requestLocation()
            })
        }.onAppear(perform: {
            locationHandler.requestAuthorisation()
        })
        .padding()
    }
}

#Preview {
    ContentView()
}
