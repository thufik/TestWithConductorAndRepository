//
//  TestWithConductorAndRepositoryTests.swift
//  TestWithConductorAndRepositoryTests
//
//  Created by EquipeSuporteAplicacao on 5/28/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import XCTest
@testable import TestWithConductorAndRepository

class TestWithConductorAndRepositoryTests: XCTestCase {
    
    var signConductor : SignConductor!
    var signRepository : SignRepository!
    
    override func setUp() {
        super.setUp()
        
        signRepository = RemoteSignRepository()
        signConductor = SignConductor(signRepository: signRepository)
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testWithMailAndPassEmpty() {
        var showActivityWasCalled : Bool = false
        var hideActivityWasCalled : Bool = false
        var messageWasCalled : Bool = false
        
        signConductor.showActivityIndicator = {
            showActivityWasCalled = true
        }
        
        signConductor.hideActivityIndicator = {
            hideActivityWasCalled = true
        }
        
        signConductor.showAlertWithMessage = { message in
            messageWasCalled = true
        }
        
        signConductor.navigateToWelcomeScreen = {
            XCTFail()
        }
        
        signConductor.didConfirmWithEmail(mail: "", pass: "")
    }
    
    func testWithNoConnection() {
        
        
    }
    
}
