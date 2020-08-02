//
//  ContentView.swift
//  Hybse
//
//  Created by Johana Šlechtová on 02/08/2020.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        GeometryReader { geo in
            VStack {
                Spacer().frame(height: geo.size.height * 0.4)
                Text("Hybse")
                    .font(.system(size: 64, weight: .medium))
                    .foregroundColor(.white)
                Spacer()
                Button(action: {}) {
                    HStack(spacing: 10) {
                        Spacer()
                        Image(systemName: "plus.circle")
                        Text("Create a challenge")
                        Spacer()
                    }//END: HStack
                    .font(.system(size: 24, weight: .semibold))
                    .foregroundColor(.white)
                }.buttonStyle(PrimaryButtonStyle())
                .padding(.horizontal, 15)
            } //END: VStack
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Image("landingBackground")
                    .resizable()
                    .scaledToFill()
                    .overlay(Color.black.opacity(0.2))
                    .edgesIgnoringSafeArea(.all)
            )
        }//END: GeometryReader
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandingView()
                .previewDevice("iPhone 8")
            LandingView()
                .previewDevice("iPhone 11 Pro")
            LandingView()
                .previewDevice("iPhone 11 Pro Max")
        }
    }
}
