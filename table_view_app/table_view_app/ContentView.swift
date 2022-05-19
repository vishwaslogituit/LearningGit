//
//  ContentView.swift
//  table_view_app
//
//  Created by Vishwas Anandani on 25/01/22.
//

import SwiftUI

struct ContentView: View {
    var tutors: [Tutor] = []
    
    var body: some View {
        NavigationView {
        List(tutors) { tutor in
            TutorCell(tutor:tutor)
        }.navigationBarTitle(Text("Tutors"))
        }
        
        //Text("Founder of appcoda")
    }
}
#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tutors: testData)
    }
}
#endif

struct TutorCell: View {
    let tutor: Tutor
    var body: some View {
        return NavigationLink(destination: TutorDetail(name: tutor.name, headline: tutor.headline, bio: tutor.bio)) {
            Image(tutor.imageName).cornerRadius(40)
            VStack(alignment: .leading) {
                Text(tutor.name)
                Text(tutor.headline)
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }}
    }
}
