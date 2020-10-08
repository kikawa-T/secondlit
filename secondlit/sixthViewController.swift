//
//  sixthViewController.swift
//  secondlit
//
//  Created by tatsuomi kikawa on 2020/10/07.
//

import UIKit

class sixthViewController: UIViewController {

    @IBOutlet var sixtext: UILabel!
    @IBOutlet var back: UIButton!
    @IBOutlet var score: UILabel!
    let saveData = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        result()
        // Do any additional setup after loading the view.
    }
    //havecount = 0, donthavecount = 10
    func result() {
        let count = saveData.integer(forKey: "count")
        switch (count) {
        case 0...4:
            sixtext.text = String("a")
        case 5...7:
            sixtext.text = String("i")
        case 8:
            sixtext.text = String("u")
        case 10...14:
            sixtext.text = String("")
        case 15...17:
            sixtext.text = String("o")
        case 18:
            sixtext.text = String("ka")
        default:
            break
        }
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
