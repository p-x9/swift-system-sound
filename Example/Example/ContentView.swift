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
            _body
        }
        .searchable(text: $searchText)
    }
}

extension ContentView {
    var _body: some View {
        VStack {
            List(soundKeys, id: \.self) { key in
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Text(key.name)
                            if let category = key.category {
                                Text("(\(category))")
                                    .font(.caption)
                            }
                        }
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
    }
}

private extension SystemSoundKey {
    var numbers: String {
        id.description
    }

    var title: String {
        if let category {
            return "\(name)(\(category))\n(\(numbers))"
        }
        return "\(name)\n(\(numbers))"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
