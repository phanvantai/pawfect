//
//  SplashView.swift
//  Pawfect
//
//  Created by Mobile Chainos on 26/05/2022.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            HStack {
                Image("paw-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 72)
                Spacer()
                    .frame(width: 16)
                Text("Pawfect")
                    .foregroundColor(Color.white)
                    .font(.system(size: 48))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
        .background(Color.black)
    }
}

#if DEBUG
struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
#endif
