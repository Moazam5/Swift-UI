//
//  ContentView.swift
//  SwiftUI-1
//
//  Created by Moazam Mir on 1/20/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var modelData = ModelData()
    var body: some View {
        LandmarkList()
        
        
    }
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
