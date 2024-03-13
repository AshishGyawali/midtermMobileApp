//
//  Ashish_Gyawali_MT_8971080UITestsLaunchTests.swift
//  Ashish_Gyawali_MT_8971080UITests
//
//  Created by Ashish Gyawali on 2024-03-10.
//

import XCTest

final class Ashish_Gyawali_MT_8971080UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
