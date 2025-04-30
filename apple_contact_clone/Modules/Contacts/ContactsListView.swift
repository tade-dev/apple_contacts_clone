//
//  ContactsListView.swift
//  apple_contact_clone
//
//  Created by BSTAR on 30/04/2025.
//

import SwiftUI

struct Contacts: Identifiable {
    let id: String = UUID().uuidString
    var alphabet: String
    var contacts: [String]
}

struct ContactsListView: View {
    
    @State var text: String = ""
    @State var contactList: [Contacts] = [
        
        Contacts(alphabet: "A", contacts: [
            "A-A-Atrent Agent",
            "AB",
            "Akintade",
            "Active Neno",
            "Abel",
            "Adeola",
        ]),
        
        Contacts(alphabet: "B", contacts: [
            "Bada",
            "Baguru",
            "Bandipo",
            "Banex Boss",
            "BARRIS",
            "Barry",
        ]),

        Contacts(alphabet: "C", contacts: [
            "CALEB",
            "Chabba Huncho",
            "Big Chabba",
            "Chabs",
            "Chelsea",
            "Chiamaka",
        ]),

    ]
    
    var body: some View {
        NavigationView {
            List {
                HStack(spacing: 15) {
                    Circle()
                        .fill(.gray)
                        .frame(width: 50, height: 50)
                    
                    VStack(alignment: .leading) {
                        
                        Text("Seun Akintade")
                            .font(.title2)
                            .bold()
                        
                        Text("My Card")
                            .font(.caption)
                            .foregroundStyle(.gray)
                            .fontWeight(.medium)
                        
                    }
                }
                .listRowSeparator(.hidden, edges: .bottom)
                
                
                ForEach(contactList) { contact in
                    Section(
                        header: Text(contact.alphabet)
                            .font(.headline)
                    ) {
                        ForEach(contact.contacts, id: \.self) { user in
                            Text(user)
                                .font(.headline)
                        }
                    }
                }
                
            }
            .listStyle(.plain)
            .navigationTitle("Contacts")
            .searchable(text: $text, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "plus")
                    }

                }
            }
        }
    }
}

#Preview {
    ContactsListView()
}
