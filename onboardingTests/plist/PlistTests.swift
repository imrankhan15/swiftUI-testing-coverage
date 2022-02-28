//
//  PlistTests.swift
//  onboardingTests
//
//  Created by Muhammad Faisal Imran Khan on 2022-02-28.
//

import XCTest
@testable import onboarding

class PlistTests: XCTestCase {
    private var manager: PlistManagerImpl!
    
    override func setUpWithError() throws {
        manager = PlistManagerImpl()
    }
    
    override func tearDownWithError() throws {
        manager = nil
    }
    
    func test_successful_decoding_onboarding_plist() {
        XCTAssertEqual(manager.convert(plist: "OnboardingContent").count, 3)
    }
}
