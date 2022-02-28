//
//  OnboardingContentManager.swift
//  onboarding
//
//  Created by Muhammad Faisal Imran Khan on 2022-02-27.
//

import Foundation

protocol OnboardingContentManager {
    var limit: Int { get }
    var items: [OnboardingItem] { get }
    init(manager: PlistManager)
}

 class OnboardingContentManagerImpl: OnboardingContentManager {
    
    var limit: Int {
        items.count - 1
    }
    
    var items: [OnboardingItem]
    
   required init(manager: PlistManager) {
        self.items = manager.convert(plist: "OnboardingContent")
       print(self.items)
    }
}
