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
                key.title.contains(searchText)
            }
        }
    }

    var body: some View {
        NavigationView {
            List(soundKeys, id: \.self) { key in
                HStack {
                    VStack(alignment: .leading) {
                        Text(key.name)
                        Text(key.numbers)
                            .font(.caption)
                    }
                    Spacer()
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

private extension SystemSoundKey {
    var numbers: String {
        ids.map { "\($0)" }.joined(separator: ", ")
    }
    var title: String {
        return "\(name)\n(\(numbers))"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
