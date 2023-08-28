//
//  ContentView.swift
//  Example
//
//  Created by p-x9 on 2023/08/29.
//  
//

import SwiftUI
import SystemSound

struct ContentView: View {
    var body: some View {
        List(SystemSoundKey.allCases, id: \.self) { key in
            Text("\(key.name) (\(key.rawValue))")
                .onTapGesture {
                    AudioServicesPlaySystemSound(key)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
