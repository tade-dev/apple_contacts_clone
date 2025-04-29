//
//  RecentContactView.swift
//  apple_contact_clone
//
//  Created by BSTAR on 22/04/2025.
//

import SwiftUI

struct RecentContactView: View {
    
    @State var searchText: String = ""
    @State var selectedView: String = "All"
    
    var body: some View {
        NavigationView {
            List {
                
            }
            .navigationTitle("Recents")
            .navigationBarTitleDisplayMode(.automatic)
            .searchable(
                text: $searchText,
                placement: .navigationBarDrawer(displayMode: .automatic),
                prompt: Text("Search"),
            )
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    EditButton()
                }
                ToolbarItem(placement: .principal) {
                    Picker("Select", selection: $selectedView) {
                        Text("All").tag("All")
                        Text("Missed").tag("Missed")
                    }
                    .pickerStyle(.segmented)
                    .frame(maxWidth: 200)
                }
            }
        }
    }
}

#Preview {
    RecentContactView()
}
