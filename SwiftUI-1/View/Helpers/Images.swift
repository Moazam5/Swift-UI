//
//  Image.swift
//  SwiftUI-1
//
//  Created by Moazam Mir on 4/16/21.
//

import SwiftUI

struct Images: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth:  5))
        
    }
}

struct Image_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}
