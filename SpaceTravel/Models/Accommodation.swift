//
//  Accommodation.swift
//  SpaceTravel
//
//  Created by Emad_OS_TEST on 21/03/2025.
//

import Foundation

struct Accommodation: Identifiable {
    let id = UUID()
    let name: String
    let location: String
    let rating: Double
    let description: String
}
