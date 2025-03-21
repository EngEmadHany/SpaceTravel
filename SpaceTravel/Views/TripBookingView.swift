//
//  TripBookingView.swift
//  SpaceTravel
//
//  Created by Emad_OS_TEST on 21/03/2025.
//

import SwiftUI

struct TripBookingView: View {
    @ObservedObject var viewModel: TripViewModel
    @State private var showConfirmation = false

    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Travel Details")) {
                    DatePicker("Departure Date", selection: $viewModel.selectedDate, displayedComponents: .date)

                    Picker("Origin", selection: $viewModel.selectedOrigin) {
                        ForEach(viewModel.origins, id: \.self) { Text($0) }
                    }

                    Picker("Destination", selection: $viewModel.selectedDestination) {
                        ForEach(viewModel.destinations, id: \.self) { Text($0) }
                    }

                    Picker("Seat Class", selection: $viewModel.selectedSeatClass) {
                        ForEach(SeatClass.allCases, id: \.self) { Text($0.rawValue) }
                    }
                }

                Section {
                    Button(action: {
                        viewModel.bookTrip()
                        showConfirmation = true
                    }) {
                        Text("Confirm Booking")
                            .bold()
                            .frame(maxWidth: .infinity)
                    }
                }
            }
            .navigationTitle("Book a Trip")
            .alert("Booking Confirmed!", isPresented: $showConfirmation) {
                Button("OK") {}
            } message: {
                Text("Your trip has been successfully booked!")
            }
        }
    }
}
