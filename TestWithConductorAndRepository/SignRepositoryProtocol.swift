//
//  SignRepositoryProtocol.swift
//  TestWithConductorAndRepository
//
//  Created by EquipeSuporteAplicacao on 5/30/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import Foundation

typealias StatusCode = Int

protocol SignRepository{
    func trySignInWithEmail(mail : String, pass : String, onComplete : (StatusCode) -> Void)
}
