//
//  SignConductor.swift
//  TestWithConductorAndRepository
//
//  Created by EquipeSuporteAplicacao on 5/30/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import Foundation

class SignConductor: NSObject {
    
    let signRepository : SignRepository
    
    init(signRepository : SignRepository) {
        self.signRepository = signRepository
    }
    
    var showActivityIndicator : () -> Void = {}
    var hideActivityIndicator : () -> Void = {}
    var navigateToWelcomeScreen : () -> Void = {}
    var showAlertWithMessage : (String) -> Void = { message in}
    
    func didConfirmWithEmail(mail : String, pass : String){
        showActivityIndicator()
        
        if (mail == "") || (pass == ""){
            hideActivityIndicator()
            showAlertWithMessage("email ou senha em branco")
        }else{
            self.performSignInBackend(email: mail, pass: pass, onComplete: { wasCompleted in
                
                hideActivityIndicator()
                
                if wasCompleted{
                    navigateToWelcomeScreen()
                }else{
                    showAlertWithMessage("Deu ruim")
                }
            })
        }
    }
    
    private func performSignInBackend(email : String, pass : String, onComplete : (Bool) -> Void){
        signRepository.trySignInWithEmail(mail: email, pass: pass, onComplete: { statusCode in
            if statusCode == 200{
                onComplete(true)
            }else{
                onComplete(false)
            }
        })
    }
}
