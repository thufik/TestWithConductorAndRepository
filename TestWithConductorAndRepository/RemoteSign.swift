//
//  RemoteSign.swift
//  TestWithConductorAndRepository
//
//  Created by EquipeSuporteAplicacao on 5/30/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import Foundation

class RemoteSignRepository : SignRepository{
    func trySignInWithEmail(mail: String, pass: String, onComplete: (StatusCode) -> Void) {
        print("faz a requisição real e retorna sucesso")
        
        onComplete(200)
    }
}
