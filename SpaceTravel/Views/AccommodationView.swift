//
//  AccommodationView.swift
//  SpaceTravel
//
//  Created by Emad_OS_TEST on 21/03/2025.
//

import SwiftUI

struct AccommodationView: View {
    @ObservedObject var viewModel: TripViewModel

    var body: some View {
        NavigationStack {
            List(viewModel.accommodations) { accommodation in
                VStack(alignment: .leading, spacing: 6) {
                    Text(accommodation.name)
                        .font(.headline)
                        .foregroundColor(.purple)

                    Text(accommodation.location)
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                    HStack {
                        Text("Rating: \(accommodation.rating, specifier: "%.1f")")
                            .font(.subheadline)
                            .foregroundColor(.blue)
                        Spacer()
                    }

                    Text(accommodation.description)
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                .padding(.vertical, 6)
            }
            .navigationTitle("Accommodations")
        }
    }
}
