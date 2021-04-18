//
//  ContentView.swift
//  ArnavCard
//
//  Created by Arnav Agarwal on 10/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.56, green: 0.27, blue: 0.68, opacity: 0.5)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("thor")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Arnav")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+91-12345678", imageName: "phone.fill")
                InfoView(text: "email.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
