//
//  ContentView.swift
//  EstebanBusinessCard
//
//  Created by Esteban Rafael Trivino Guerra on 4/02/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.18, green: 0.80, blue: 0.44, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("profilePicture").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Esteban Triviño Guerra")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Mobile Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoRectangleView(text: "+57 3015142547", imageView: "phone.fill")
                InfoRectangleView(text: "esteban.trivino@globant.com", imageView: "envelope.fill")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
