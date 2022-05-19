//
//  ContentView.swift
//  Learning_AVPlayer
//
//  Created by Vishwas Anandani on 14/03/22.
//

import SwiftUI
import AVKit

struct ContentView: View {
    @State var player = AVPlayer()
    
    var body: some View {
        VideoPlayer(player: player).ignoresSafeArea()
            .onAppear(){
                player = AVPlayer(url: URL(string: "http://devimages.apple.com/iphone/samples/bipbop/bipbopall.m3u8")!)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
