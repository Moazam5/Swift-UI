//
//  FavoriteButton.swift
//  SwiftUI-1
//
//  Created by Moazam Mir on 1/22/21.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet : Bool
    var userDef  = UserDefaults(suiteName: "SweetSuite")
    
    var body: some View {
        Button(action: {
            isSet.toggle()
            userDef?.setValue("Value", forKey: "Key")
        }, label: {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? Color.yellow : Color.gray )
        })
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
