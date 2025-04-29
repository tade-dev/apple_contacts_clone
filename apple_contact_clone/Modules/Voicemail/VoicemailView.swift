//
//  VoicemailView.swift
//  apple_contact_clone
//
//  Created by BSTAR on 23/04/2025.
//

import SwiftUI

struct VoicemailView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    
                    topLayer
                    
                    HStack(spacing: 30) {
                        Text("Network Provider Voicemail")
                            .foregroundStyle(.primary)
                            .fontWeight(.heavy)
                        Button {
                            
                        } label: {
                            Text("Call")
                                .accentColor(.primary)
                                .padding(.horizontal, 10)
                        }
                        .buttonStyle(.bordered)
                        .buttonBorderShape(.capsule)

                    }
                    .padding(.top, 5)
                    
                    Spacer()
                }
                .navigationTitle("Voicemail")
            }
        }
    }
    
    var topLayer: some View {
        VStack {
            Text("Visual Voicemail is currently unavailable.")
                .foregroundStyle(.primary)
                .fontWeight(.heavy)
            
            Button {
                
            } label: {
                Text("Call Voicemail")
                    .fontWeight(.heavy)
            }

        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(
            Rectangle()
                .fill(.gray.opacity(0.3))
            
        )
    }
}

#Preview {
    VoicemailView()
}
