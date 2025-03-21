//
//  TravelPackage.swift
//  SpaceTravel
//
//  Created by Emad_OS_TEST on 21/03/2025.
//

import Foundation

struct TravelPackage: Identifiable {
    let id = UUID()
    let seatClass: SeatClass
    let price: Double
    let description: String
}
