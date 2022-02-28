//
//  ContentView.swift
//  onboarding
//
//  Created by Muhammad Faisal Imran Khan on 2022-02-27.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false
    
    var body: some View {
        TabView {
            Text("Home Screen")
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            Text("Bookmark Screen")
                .tabItem{
                    Image(systemName: "bookmark")
                    Text("Bookmark")
                }
            
            Text("Settings Screen")
                .tabItem{
                    Image(systemName: "gearshape")
                    Text("Settings")
                }
            
        }
        
        .fullScreenCover(isPresented: .constant(!hasSeenOnboarding), content: {
            let plistManager = PlistManagerImpl()
            let onboardingContentManager = OnboardingContentManagerImpl(manager: plistManager)
            
            OnboardingScreenView(manager: onboardingContentManager){
                hasSeenOnboarding = true
            }
            
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
