//
//  ContentView.swift
//  apple_contact_clone
//
//  Created by BSTAR on 22/04/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab: Int = 0
    
    var body: some View {
        TabView {
            
            FavoriteView()
                .ignoresSafeArea()
                .tabItem {
                    Label("Favourites", systemImage: "star.fill")
                }
            
            RecentContactView()
                .ignoresSafeArea()
                .tabItem {
                    Label("Recents", systemImage: "clock.fill")
                }
            
            ListOptionsView()
                .ignoresSafeArea()
                .tabItem {
                    Label("Contacts", systemImage: "person.crop.circle.fill")
                }
            
            Color.pink
                .ignoresSafeArea()
                .tabItem {
                    Label("Keypad", systemImage: "circle.grid.3x3.fill")
                }
            
            VoicemailView()
                .ignoresSafeArea()
                .tabItem {
                    Label("Voicemail", systemImage: "recordingtape")
                }
            
        }
    }
}

#Preview {
    ContentView()
}
