//
//  PricingView.swift
//  SpaceTravel
//
//  Created by Emad_OS_TEST on 21/03/2025.
//

import SwiftUI

struct PricingView: View {
    @ObservedObject var viewModel: TripViewModel

    var body: some View {
        NavigationStack {
            List(viewModel.packages) { package in
                VStack(alignment: .leading, spacing: 6) {
                    Text(package.seatClass.rawValue)
                        .font(.headline)
                        .foregroundColor(.purple)

                    Text(package.description)
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                    Text("$\(package.price, specifier: "%.2f")")
                        .font(.title3)
                        .bold()
                        .foregroundColor(.blue)
                }
                .padding(.vertical, 6)
            }
            .navigationTitle("Pricing Options")
        }
    }
}

