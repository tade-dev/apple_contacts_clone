//
//  FavoriteView.swift
//  apple_contact_clone
//
//  Created by BSTAR on 22/04/2025.
//

import SwiftUI

struct FavoriteView: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("No Favourites")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.gray)
            }
            .navigationTitle("Favourites")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                trailing: Button(action: {
                    showSheet.toggle()
                }, label: {
                    Image(systemName: "plus")
                })
                .sheet(isPresented: $showSheet) {
                    
                }
            )
        }
    }
}

#Preview {
    FavoriteView()
}
