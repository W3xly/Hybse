//
//  CreateView.swift
//  Hybse
//
//  Created by Johana Šlechtová on 06/08/2020.
//

import SwiftUI

struct CreateView: View {
    @State private var isActive: Bool = false
    var body: some View {
        ScrollView {
            VStack {
                DropdownView()
                DropdownView()
                DropdownView()
                DropdownView()
                Spacer()
                NavigationLink(destination: RemindView(), isActive: $isActive) {
                    Button(action: {
                        isActive = true
                    }, label: {
                        Text("Next")
                            .font(.system(size: 24, weight: .medium))
                    })
                }
            }.navigationBarTitle("Create")
            .navigationBarBackButtonHidden(true)
            .padding(.bottom, 15)
        }
    }
}
