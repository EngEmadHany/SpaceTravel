//
//  ContentView.swift
//  SpaceTravel
//
//  Created by Emad_OS_TEST on 21/03/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = TripViewModel()

    var body: some View {
        TabView {
            TripBookingView(viewModel: viewModel)
                .tabItem {
                    Label("Book", systemImage: "calendar.badge.plus")
                }

            PricingView(viewModel: viewModel)
                .tabItem {
                    Label("Pricing", systemImage: "dollarsign.circle")
                }

            AccommodationView(viewModel: viewModel)
                .tabItem {
                    Label("Stay", systemImage: "building.2.crop.circle")
                }

            DashboardView(viewModel: viewModel)
                .tabItem {
                    Label("Dashboard", systemImage: "person.crop.circle")
                }
        }
        .accentColor(.purple)
//        .environmentObject(viewModel)

    }
}


#Preview {
    ContentView()
}
