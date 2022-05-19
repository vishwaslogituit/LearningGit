//
//  Home.swift
//  SwiftUIExample
//
//  Created by vivek kasthuri on 24/10/21.
//

import SwiftUI

struct Home: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            Text("Click")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .frame(width: 70.0, height: 40.0)
        }
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)

    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
