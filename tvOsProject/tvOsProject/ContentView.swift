//
//  ContentView.swift
//  tvOsProject
//
//  Created by Vishwas Anandani on 07/04/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var buttonTracker = "Press Something!"
    var body: some View {
        
        HStack{
            Button(action: {self.buttonTracker = "You Pressed Button 3"})
            {
                Text("Button 3")
            }
            VStack{
                Text(buttonTracker)
                Button(action: {self.buttonTracker = "You Pressed Button 1"})
                {
                    Text("Button 1")
                }
                
                Button(action: {
                        self.buttonTracker = "You Pressed Button 2"
                    
                }) {
                    Text("Button 2")
            }
        }
        }
       
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
