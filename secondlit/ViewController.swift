//
//  ViewController.swift
//  secondlit
//
//  Created by tatsuomi kikawa on 2020/09/24.
//

import UIKit
import MorphingLabel

class ViewController: UIViewController {

    @IBOutlet weak var send: LTMorphingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //send.morphingEffect = .evaporate
    }
    override func viewDidAppear(_ animated: Bool) {
            send.morphingEffect = .fall
            send.text = "Changed!!"
        }

}

