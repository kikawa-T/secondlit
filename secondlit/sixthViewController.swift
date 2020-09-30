//
//  sixthViewController.swift
//  secondlit
//
//  Created by tatsuomi kikawa on 2020/09/30.
//

import UIKit

class sixthViewController: UIViewController {

    @IBOutlet var text1: UILabel!
    
    var text2 = String("")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        text1.text = text2
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
