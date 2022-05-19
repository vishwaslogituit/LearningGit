//
//  ContentView.swift
//  new_codable_project
//
//  Created by Vishwas Anandani on 24/03/22.
//

import SwiftUI

let input_url = "http://api.plos.org/search?q=title:%22Drosophila%22%20and%20body:%22RNA%22&fl=id&start=1&rows=100"
var json_loading1 = json_loading()
var global_json_data: [Docs] = []




struct ContentView: View {
    var json_data =  json_loading1.loadJson(fromURLString:input_url){ (result) in
        switch result {
        case .success(let data):
            print(data)
            global_json_data = data.response.docs
            print(global_json_data)
        case .failure(let error):
            print(error)
        }}
    var body: some View {
        List(0..<global_json_data.count){index in
            Text(global_json_data[index].id!)
        }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

