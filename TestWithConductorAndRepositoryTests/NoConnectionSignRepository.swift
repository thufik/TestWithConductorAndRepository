//
//  NoConnectionSignRepository.swift
//  TestWithConductorAndRepositoryTests
//
//  Created by EquipeSuporteAplicacao on 5/30/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import UIKit
@testable import TestWithConductorAndRepository

class NoConnectionSignRepository : SignRepository{
    func trySignInWithEmail(mail: String, pass: String, onComplete: (StatusCode) -> Void) {
        onComplete(503)
    }
}
