//
//  ListOptionsView.swift
//  apple_contact_clone
//
//  Created by BSTAR on 22/04/2025.
//

import SwiftUI

struct ListOptionsView: View {
    
    @State var isGmailSectionActive: Bool = true
    @State var isICloudSectionActive: Bool = true
    
    var body: some View {
        NavigationView {
            
            List {
                
                allContacts
                
                gmailSection
                
                iCloudSection

            }
            .navigationTitle("Lists")
            .navigationBarItems(
                leading: Button(action: {
                    
                }, label: {
                    EditButton()
                }),
                trailing: Button(action: {
                    
                }, label: {
                    Text("Add List")
                })
            )
        }
    }
    
    var gmailSection: some View {
        Section(isExpanded:$isGmailSectionActive) {
            NavigationLink {
                
            } label: {
                HStack {
                    Image(systemName: "person.3")
                        .foregroundStyle(.blue)
                    Text("All Gmail")
                }
                .badge(240)
            }

        } header: {
            Text("Gmail")
                .font(.title2)
                .bold()
                .foregroundStyle(.black)
                .textCase(.none)
        }
    }
    
    var allContacts: some View {
        NavigationLink {
            ContactsListView()
        } label: {
            HStack {
                Image(systemName: "person.3")
                    .foregroundStyle(.blue)
                Text("All Contacts")
            }
            .badge(968)
        }
    }
    
    var iCloudSection: some View {
        
        Section(isExpanded: $isICloudSectionActive) {
            NavigationLink {
                
            } label: {
                HStack {
                    Image(systemName: "person.3")
                        .foregroundStyle(.blue)
                    Text("All iCloud")
                }
                .badge(755)
            }
            
            NavigationLink {
                
            } label: {
                HStack {
                    Image(systemName: "person.2")
                        .foregroundStyle(.blue)
                    Text("Friends")
                }
                .badge(1)
            }
            NavigationLink {
                
            } label: {
                HStack {
                    Image(systemName: "person.2")
                        .foregroundStyle(.blue)
                    Text("Work")
                }
                .badge(0)
            }

        } header: {
            Text("iCloud")
                .font(.title2)
                .bold()
                .foregroundStyle(.black)
                .textCase(.none)
        }
    }
    
}

#Preview {
    ListOptionsView()
}
