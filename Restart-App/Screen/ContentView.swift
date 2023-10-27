//
//  ContentView.swift
//  Restart-App
//
//  Created by FFK on 19.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("onboarding") var isOnboardingActiveView: Bool = false
    
    var body: some View {
        
        ZStack {
            if isOnboardingActiveView {
                OnboardingView()
            } else {
                HomeView()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
