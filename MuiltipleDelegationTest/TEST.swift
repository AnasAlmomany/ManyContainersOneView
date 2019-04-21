//
//  TEST.swift
//  MuiltipleDelegationTest
//
//  Created by Anas Almomany on 4/21/19.
//  Copyright © 2019 Anas Almomany. All rights reserved.
//

import UIKit

enum Tap { case on, off }

protocol TESTDelegate: class {
    func tap(tap: Tap)
}

class TEST: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBAction func onTapped(_ sender: UIButton) {
        label?.text = "XX ON XX"
        delegate?.tap(tap: .on)
    }
    
    @IBAction func offTapped(_ sender: UIButton) {
        label?.text = "XX OFF XX"
        delegate?.tap(tap: .off)
    }
    
    weak var delegate: TESTDelegate?
}
