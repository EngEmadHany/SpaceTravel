//
//  Trip.swift
//  SpaceTravel
//
//  Created by Emad_OS_TEST on 21/03/2025.
//

import Foundation

struct Trip: Identifiable {
    let id = UUID()
    let departureDate: Date
    let originStation: String
    let destination: String
    let seatClass: SeatClass
}

enum SeatClass: String, CaseIterable {
    case luxury = "Luxury Cabin"
    case economy = "Economy Shuttle"
    case vip = "VIP Zero-Gravity Experience"
}
