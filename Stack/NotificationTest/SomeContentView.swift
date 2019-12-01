//
//  SomeContentView.swift
//  Stack
//
//  Created by Алексей on 05.11.2019.
//  Copyright © 2019 Алексей. All rights reserved.
//

import SwiftUI

struct SomeContentView: View {
    @ObservedObject private var kGuardian = KeyboardListener()
    @State private var name = Array<String>.init(repeating: "", count: 3)

    var body: some View {

        VStack {
            Group {
                Text("Some filler text").font(.largeTitle)
                Text("Some filler text").font(.largeTitle)
            }

            TextField("enter text #1", text: $name[0])
                .textFieldStyle(RoundedBorderTextFieldStyle())

            TextField("enter text #2", text: $name[1])
                .textFieldStyle(RoundedBorderTextFieldStyle())

            TextField("enter text #3", text: $name[2])
                .textFieldStyle(RoundedBorderTextFieldStyle())
//                .background(GeometryGetter(rect: $kGuardian.rects[0]))

        }
        .offset(y: kGuardian.keyboardHeight).animation(.easeInOut(duration: 1.0))
        .onAppear { self.kGuardian.addObserver() }
        .onDisappear { self.kGuardian.removeObserver() }
    }
}

struct SomeContentView_Previews: PreviewProvider {
    static var previews: some View {
        SomeContentView()
    }
}
