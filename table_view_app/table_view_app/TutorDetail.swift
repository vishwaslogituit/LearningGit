//
//  TutorDetail.swift
//  table_view_app
//
//  Created by Vishwas Anandani on 09/02/22.
//

import SwiftUI

struct TutorDetail: View {
    var name: String
    var headline: String
    var bio: String
    var body: some View {
        
        VStack {
            Image(name)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.orange, lineWidth: 4)
                )
                .shadow(radius: 10 )
            Text(name).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text(headline).font(.subheadline)
            Divider()
            Text(bio).font(.headline).multilineTextAlignment(.center).lineLimit(50)
        }.padding().navigationBarTitle(Text(name),displayMode: .inline)
        
    }
}

#if DEBUG
struct TutorDetail_Previews: PreviewProvider {
    static var previews: some View {
        TutorDetail(name: "Simon Ng", headline: "Founder of AppCoda", bio: "Founder of AppCoda. Author of multiple iOS programming books including Beginning iOS 12 Programming with Swift and Intermediate iOS 12 Programming with Swift. iOS Developer and Blogger.")
    }
}
#endif
