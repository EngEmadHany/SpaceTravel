//
//  TripViewModel.swift
//  SpaceTravel
//
//  Created by Emad_OS_TEST on 21/03/2025.
//

import Foundation

class TripViewModel: ObservableObject {
    // User Selections
    @Published var selectedDate = Date()
    @Published var selectedOrigin = "USA"
    @Published var selectedDestination = "Lunar Hotel"
    @Published var selectedSeatClass: SeatClass = .economy
    // User Bookings
    @Published var bookedTrips: [Trip] = []

    // Mock Data
    let origins = ["UAE", "USA", "Netherlands", "Egypt"]
    let destinations = ["Lunar Hotel", "Orbital Resort", "Space Station Alpha"]
    
    let packages: [TravelPackage] = [
        TravelPackage(seatClass: .luxury, price: 50000, description: "Luxury private cabin with Earth views."),
        TravelPackage(seatClass: .economy, price: 15000, description: "Economical yet comfortable."),
        TravelPackage(seatClass: .vip, price: 75000, description: "Exclusive zero-gravity experience.")
    ]
    
    let accommodations: [Accommodation] = [
        Accommodation(name: "Lunar Grand Hotel", location: "Moon", rating: 4.8, description: "Experience luxury on the lunar surface."),
        Accommodation(name: "Orbital Inn", location: "Low Earth Orbit", rating: 4.5, description: "Comfortable stay with breathtaking Earth views."),
        Accommodation(name: "Space Station Alpha", location: "Orbit", rating: 4.7, description: "Modern facilities for comfortable space living.")
    ]

    func bookTrip() {
        let newTrip = Trip(departureDate: selectedDate, originStation: selectedOrigin, destination: selectedDestination, seatClass: selectedSeatClass)
        bookedTrips.append(newTrip)
    }
}
