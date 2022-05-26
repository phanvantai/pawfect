//
//  OnboardingView.swift
//  Pawfect
//
//  Created by Mobile Chainos on 26/05/2022.
//

import SwiftUI

struct OnboardingContentView: View {
    private let imageName: String
    private let iconStateName: String
    private let title: String
    private let contentText: String
    
    init(imageName: String, iconStateName: String, title: String, contentText: String) {
        self.imageName = imageName
        self.iconStateName = iconStateName
        self.title = title
        self.contentText = contentText
    }
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: geo.size.width, maxHeight: geo.size.height * 0.4)
                Spacer()
            }
            .background(Color.black)
            VStack {
                Spacer()
                HStack {
                    Text(title)
                        .foregroundColor(Color.white)
                        .font(.system(size: 30))
                        .bold()
                    Spacer()
                    Image(iconStateName)
                        .resizable()
                        .frame(maxWidth: 44, maxHeight: 44)
                }
                Spacer()
                    .frame(height: 24)
                HStack {
                    Text(contentText)
                        .foregroundColor(Color.init(hex: "FFEBEBF5").opacity(0.6))
                    .font(Constants.primaryFontSize)
                    Spacer()
                }
                Spacer()
                    .frame(height: 64)
                Spacer()
            }
            .padding(20)
        }
        .ignoresSafeArea(.all)
    }
}

#if DEBUG
struct OnboardingContentView_Previews: PreviewProvider {
    static let image = "onboarding-1"
    static let icon = "onboarding-state-1"
    static let title = "Bring home\nyour prefect pet"
    static let content = "We match you with your perfect pet friend who matches your lifestyle and would fit right in."
    static var previews: some View {
        OnboardingContentView(imageName: "onboarding-2", iconStateName: "onboarding-state-2", title: "Adopt from\nverified shelters", contentText: "All the pets listed in Pawfect are from verified pet shelters and homes.")
    }
}
#endif
