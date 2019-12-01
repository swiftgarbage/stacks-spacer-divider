//
//  ContentView.swift
//  Stack
//
//  Created by Алексей on 01.11.2019.
//  Copyright © 2019 Алексей. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            PersonView()
//                .frame(
//                    minWidth: 0,
//                    maxWidth: .infinity,
//                    minHeight: 0,
//                    maxHeight: .infinity,
//                    alignment: .top
//            )
            Spacer()
        }
    }
}

struct PersonView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 48, height: 48)
            
            HStack {
                Text("Малыш")
                Text("Джо")
            }
            
            Divider()
            Text("Молодой парень высокого роста с костистой фигурой. У него короткие слипшиеся собранные в хвост иссиня-черные волосы и огромные жемчужные глаза.")
                .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
