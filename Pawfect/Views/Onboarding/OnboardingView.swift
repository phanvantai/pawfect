//
//  OnboardingView.swift
//  Pawfect
//
//  Created by Mobile Chainos on 26/05/2022.
//

import SwiftUI

struct OnboardingView: View {
    @State private var currentIndex = 0
    var body: some View {
        GeometryReader { geo in
            VStack {
                TabView(selection: $currentIndex) {
                    OnboardingContentView(imageName: "onboarding-1", iconStateName: "onboarding-state-1", title: "Bring home\nyour prefect pet", contentText: "We match you with your perfect pet friend who matches your lifestyle and would fit right in.")
                        .tag(0)
                    OnboardingContentView(imageName: "onboarding-2", iconStateName: "onboarding-state-2", title: "Adopt from\nverified shelters", contentText: "All the pets listed in Pawfect are from verified pet shelters and homes.")
                        .tag(1)
                    OnboardingContentView(imageName: "onboarding-3", iconStateName: "onboarding-state-3", title: "Pamper your pet\nwith top accessories and food", contentText: "Find the right food and treats from top brands to spoil your pet. And every pet loves their chew toy.")
                        .tag(2)
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
            }
            .frame(maxWidth: .infinity, maxHeight: geo.size.height * 0.9)
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color.black)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
