//
//  ViewController.swift
//  my CI CD App
//
//  Created by JJ Niemand on 2018/11/23.
//  Copyright © 2018 JJ Niemand. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var envLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let env = getEnvValue() {
            envLabel.text = env
        } else {
            envLabel.text = "SOMETHING WENT WRONG"
        }
    }
    
    func getEnvValue() -> String? {
        return Bundle.main.object(forInfoDictionaryKey: "EnvVar") as? String
    }

}

