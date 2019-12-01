//
//  OverloadStack.swift
//  Stack
//
//  Created by Алексей on 05.11.2019.
//  Copyright © 2019 Алексей. All rights reserved.
//

import SwiftUI

struct OverloadStack: View {
    var body: some View {
        VStack {
            Text("Text - 1")
            Text("Text - 2")
            Text("Text - 3")
            Text("Text - 4")
            Text("Text - 5")
            Text("Text - 6")
            Text("Text - 7")
            VStack {
                Text("Text - 8")
                Text("Text - 9")
                Text("Text - 10")
                Text("Text - 11")
            }
        }
    }
}

struct OverloadStack_Previews: PreviewProvider {
    static var previews: some View {
        OverloadStack()
    }
}
