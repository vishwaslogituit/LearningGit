//
//  ContentView.swift
//  swiftUItest
//
//  Created by Vishwas Anandani on 05/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text("Hello !").padding(78).background(Color.red
                                                                                            .blur(radius: 30))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
