//
//  fifthViewController.swift
//  secondlit
//
//  Created by tatsuomi kikawa on 2020/09/30.
//

import UIKit

class fifthViewController: UIViewController {

    @IBOutlet var text1: UILabel!
    @IBOutlet var text2: UILabel!
    @IBOutlet var text3: UILabel!
    var text11 = String("ペットに長生きしてさせてあげること，最後まで責任を持って育てること，ペットと触れ合う時間をたくさん取ること，しっかり散歩してあげること，様々なことが浮かぶと思います．とても大切で，必要なことだらけです．それでも私は，良い飼い主とは")
    var text22 = String("飼う前から死ぬまでの間ずっと，ペットにとっての１番の幸せは何かを考え続けること")
    var text33 = String("だと思いますよ")
    override func viewDidLoad() {
        super.viewDidLoad()
        text1.text = text11
        text2.text = text22
        text3.text = text33
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
