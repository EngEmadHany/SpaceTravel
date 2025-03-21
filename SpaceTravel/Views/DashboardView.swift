//
//  DashboardView.swift
//  SpaceTravel
//
//  Created by Emad_OS_TEST on 21/03/2025.
//

import SwiftUI

struct DashboardView: View {
    @ObservedObject var viewModel: TripViewModel

    var body: some View {
        NavigationStack {
            List {
                if viewModel.bookedTrips.isEmpty {
                    Text("No trips booked yet.")
                        .foregroundColor(.secondary)
                        .padding()
                } else {
                    ForEach(viewModel.bookedTrips) { trip in
                        VStack(alignment: .leading, spacing: 6) {
                            Text("\(trip.originStation) → \(trip.destination)")
                                .font(.headline)
                                .foregroundColor(.purple)

                            Text("Departure: \(trip.departureDate.formatted(date: .long, time: .omitted))")
                                .font(.subheadline)
                                .foregroundColor(.secondary)

                            Text("Class: \(trip.seatClass.rawValue)")
                                .font(.subheadline)
                                .foregroundColor(.blue)

                            Text("Countdown: \(daysUntil(date: trip.departureDate)) days")
                                .font(.footnote)
                                .foregroundColor(.gray)
                        }
                        .swipeActions {
                            Button(role: .destructive) {
                                cancelTrip(trip: trip)
                            } label: {
                                Label("Cancel", systemImage: "trash")
                            }
                        }
                    }
                }
            }
            .navigationTitle("My Dashboard")
        }
    }

    private func daysUntil(date: Date) -> Int {
        Calendar.current.dateComponents([.day], from: Date(), to: date).day ?? 0
    }

    private func cancelTrip(trip: Trip) {
        if let index = viewModel.bookedTrips.firstIndex(where: { $0.id == trip.id }) {
            viewModel.bookedTrips.remove(at: index)
        }
    }
}
