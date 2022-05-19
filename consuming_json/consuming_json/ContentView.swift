//
//  ContentView.swift
//  consuming_json
//
//  Created by Vishwas Anandani on 09/03/22.
//

import SwiftUI
import Foundation

let urlString = "http://capi.hungama.com/webservice/thirdparty/content/music/playlist_details?store=1&country=IN&content=39596&user=135450561&product=VI"


var tracks: [Track] = []
var json_loading_class_instance = loading_json()
var imageView : UIImage?


struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView{
                List(0..<tracks.count){index in
                    //Text(tracks[index].title)
                    songcellView(track:tracks[index])
                
                }
                
                .navigationTitle(Text("Songs"))
            }
        }
    
    }
}

struct songcellView : View{
    let track: Track
    var body: some View {
        return NavigationLink(destination: SongDetails(content_name: track.title, singer_name: track.singers, album_name: track.albumName, url_link: track.images.image200X200[0])) {
            VStack {
                Text(track.title)
                    .padding()
            }
    //}
        }
    }}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
#endif
