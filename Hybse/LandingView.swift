//
//  ContentView.swift
//  Hybse
//
//  Created by Johana Šlechtová on 02/08/2020.
//

import SwiftUI

struct LandingView: View {
    
    @State private var isActive: Bool = false
    
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                VStack {
                    Spacer().frame(height: geo.size.height * 0.4)
                    Text("Hybse")
                        .font(.system(size: 64, weight: .medium))
                        .foregroundColor(.white)
                    Spacer()
                    NavigationLink(destination: CreateView(), isActive: $isActive) {
                        Button(action: {
                            isActive = true
                        }) {
                            HStack(spacing: 10) {
                                Spacer()
                                Image(systemName: "plus.circle")
                                Text("Create a challenge")
                                Spacer()
                            }//END: HStack
                            .font(.system(size: 24, weight: .semibold))
                            .foregroundColor(.white)
                        }//END: Button
                        .buttonStyle(PrimaryButtonStyle())
                        .padding(15)
                    }
                } //END: VStack
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    Image("landingBackground")
                        .resizable()
                        .scaledToFill()
                        .overlay(Color.black.opacity(0.2))
                        .frame(width: geo.size.width)
                        .edgesIgnoringSafeArea(.all)
                )
            }//END: GeometryReader
        }//END: NavigationView
        .accentColor(.primary)
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
