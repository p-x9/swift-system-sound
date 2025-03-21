//
//  SystemSoundKind.swift
//  SystemSound
//
//  Created by p-x9 on 2025/03/18
//  
//

import Foundation

public enum SystemSoundKind: String, Codable, Hashable {
    case `default`
    case modern
    case new
    case nano
}

extension SystemSoundKind {
    public var directoryName: String {
        switch self {
        case .default: "."
        case .modern: "Modern"
        case .new: "New"
        case .nano: "nano"
        }
    }
}
