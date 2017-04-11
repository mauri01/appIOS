//
//  AppPruebaUITests.swift
//  AppPruebaUITests
//
//  Created by Mauricio Escobar on 7/4/17.
//  Copyright © 2017 Mauricio Escobar. All rights reserved.
//

import XCTest

class AppPruebaUITests: XCTestCase {
        
    override func setUp() {
        //super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        let app = XCUIApplication()
        
        app.buttons["Tap to Change Color"].tap()
        
        //XCTAssert(app.staticTexts ["Hola Mundo"].exists)
        
        XCTAssert(app.buttons["Button"].exists)
        app.buttons["Button"].tap()
        if (app.buttons["Button"].exists){
        //XCTFail("error al entrar")
            
            NSLog("Element was not found:")
        }
        
        XCTAssert(app.staticTexts ["Hola Mundo"].exists)
        
    }
    
}
