//
//  ContactView.swift
//  apple_contact_clone
//
//  Created by BSTAR on 22/04/2025.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    
                } label: {
                    HStack {
                        Image(systemName: "person.3")
                            .foregroundStyle(.blue)
                        Text("All Contacts")
                    }
                    .badge(968)
                }
                
                Section {
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
                }
                
                Section {
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
                }


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
}

#Preview {
    ContactView()
}
