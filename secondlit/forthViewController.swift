//
//  forthViewController.swift
//  secondlit
//
//  Created by tatsuomi kikawa on 2020/09/25.
//

import UIKit

class forthViewController: UIViewController {
    
    @IBOutlet var thanks: UILabel!
    
    @IBOutlet var text1: UILabel!
    
    //@IBOutlet var text2: UILabel!
    
    //飼っているbutton
    @IBOutlet var YesButton: UIButton!
    
    //飼いたいbutton
    @IBOutlet var NoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thanks.text = String("見てくれてありがとうございます．")
        text1.text = String("このアプリを真剣に考えてくれたあなたならペットを幸せにできます．")
        YesButton.setTitle("飼っている人へ", for: .normal)
        NoButton.setTitle("飼いたい人へ", for: .normal)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func have() {
        
    }
    
    @IBAction func donthave() {
        
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
