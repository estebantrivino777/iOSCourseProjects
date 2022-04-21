//
//  InfoRectangleView.swift
//  EstebanBusinessCard
//
//  Created by Esteban Rafael Trivino Guerra on 4/02/22.
//

import SwiftUI

struct InfoRectangleView: View {
    
    let text: String
    let imageView: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageView)
                    .foregroundColor(.green)
                Text(text)
            })
            .padding(.all)
    }
}

struct InfoRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        InfoRectangleView(text: "Hello", imageView: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
