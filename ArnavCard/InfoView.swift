//
//  InfoView.swift
//  ArnavCard
//
//  Created by Arnav Agarwal on 10/04/21.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            // the following can also be done to set color of rectangel to be white too instead of using fill above
            //                    .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text).foregroundColor(.black)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "abc", imageName: "phone.fill")
            //renders the preview in its actual size , exactly how it will be used in other parent views
            .previewLayout(.sizeThatFits)
    }
}
