//
//  fifthViewController.swift
//  secondlit
//
//  Created by tatsuomi kikawa on 2020/09/30.
//

import UIKit

class fifthViewController: UIViewController {

    @IBOutlet var text1: UILabel!
    
    var text2 = String("全ての質問を迷うことなく「はい」で，答えれるようになることができるようになれたなら，きっとペットにあなたの愛が伝わります．")
    
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
