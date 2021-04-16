//
//  AppView.swift
//  SwiftUI-1
//
//  Created by Moazam Mir on 1/22/21.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Image(systemName: "sun.min")
                    Text("Daily")
                }
            LandmarkList()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Weekly")
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
