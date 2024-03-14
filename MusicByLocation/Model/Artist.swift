//
//  Artist.swift
//  MusicByLocation
//
//  Created by Kurumlu, Koza (RCH) on 14/03/2024.
//

import Foundation

struct Artist: Codable {
    var name: String
    
    private enum CodingKeys: String, CodingKey {
        case name = "artistName"
    }
}
