//
//  RemindView.swift
//  Hybse
//
//  Created by Johana Šlechtová on 06/08/2020.
//

import SwiftUI

struct RemindView: View {
    var body: some View {
        VStack {
            Spacer()
            DropdownView()
            Spacer()
            Group {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Create")
                }.padding(.bottom, 15)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Skip")
                }
            }
            .font(.system(size: 24, weight: .medium))
            .foregroundColor(.primary)
            
        }.navigationTitle("Remind")
        .padding(.bottom, 15)
    }
}
