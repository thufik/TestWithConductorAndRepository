//
//  ViewController.swift
//  TestWithConductorAndRepository
//
//  Created by EquipeSuporteAplicacao on 5/28/18.
//  Copyright © 2018 Thufik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var signCondctuor : SignConductor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signCondctuor.hideActivityIndicator = {
            print("hide")
        }
        
        signCondctuor.showActivityIndicator = {
            print("show")
        }
        
        signCondctuor.navigateToWelcomeScreen = {
            print("navegando para a tela de welcome")
        }
        
        signCondctuor.showAlertWithMessage = { message in
            print(message)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func accessTheSystem(_ sender: UIButton) {
        signCondctuor.didConfirmWithEmail(mail: "hue", pass: "huezagem")
    }
}
