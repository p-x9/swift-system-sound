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
    @State var searchText: String = ""

    var soundKeys: [SystemSoundKey] {
        if searchText.isEmpty {
            return SystemSoundKey.allCases
        } else {
            return SystemSoundKey.allCases.filter { key in
                "\(key.name) \(key.rawValue)".contains(searchText)
            }
        }
    }

    var body: some View {
        NavigationView {
            List(soundKeys, id: \.self) { key in
                HStack {
                    Text("\(key.name) (\(key.rawValue))")
                }
                .contentShape(Rectangle())
                .onTapGesture {
                    AudioServicesPlaySystemSound(key)
                }
            }
        }
        .searchable(text: $searchText)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
