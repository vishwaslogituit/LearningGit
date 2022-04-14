//
//  Song_Details.swift
//  consuming_json
//
//  Created by Vishwas Anandani on 09/03/22.
//

import Foundation
import SwiftUI
import UIKit

var imageData = Data()
func image_processing(urlstring:String){
    let imageURL = URL(string:urlstring)
    do{
    imageData = try Data(contentsOf:imageURL!)}
    catch{print("error")}
}

struct SongDetails: View {
    var content_name: String
    var singer_name: String
    var album_name: String
    var url_link: String
    var body: some View {
        var check = image_processing(urlstring:url_link)
        
        VStack {
            Text(content_name).font(.headline).multilineTextAlignment(.center).lineLimit(3)
            Text(singer_name).font(.footnote)
            Image(uiImage:UIImage(data: imageData)!).cornerRadius(20)
            //Divider()
            //Text(album_name).font(.headline)
        }.padding(.bottom, 300.0)
        //.navigationBarTitle(Text(content_name+" "+singer_name)
         //                   ,displayMode: .inline)
        //.navigationBarTitle(Text(singer_name), displayMode: .inline)
        
    }
}

struct SongDetails_Previews: PreviewProvider {
    static var previews: some View {
        SongDetails(content_name: "check1", singer_name: "Check2", album_name: "Check3", url_link: "https://images.hungama.com/c/1/af3/52a/80914913/80914913_200x200.jpg")
    }
}
