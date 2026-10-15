//
//  ContentView.swift
//  RestartApplication
//
//  Created by MacBook Pro on 14/10/2026.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActie: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActie {
                OnBoardingView()
                    
                } else {
                    HomeView()
                }
            }
        }
    
}


#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
