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
    //@IBOutlet var text3: UILabel!
    var text11 = String("私は，飼う前からに意味があると感じてます．飼うことで自分とペットどちらも幸せである必要があります．飼えない環境で，飼ったとしても飼いたいと思ったあなたが1番悲しみます．動物と触れ合う環境はたくさんあります．飼わないことが，ペットの幸せになる場合もあるかも知れません．飼える環境作りや適切な動物との触れ合い方ができるあなたは素晴らしいです．私の今の答えです．皆さんも自分の中で良い飼い主ついて考えてみてください．")
    var text22 = String("飼う前から死ぬまでの間ずっと，ペットにとっての１番の幸せは何かを考え続けること")
    //var text33 = String("皆さんの自分の中で良い飼い主に考えてみてください")
    override func viewDidLoad() {
        super.viewDidLoad()
        text1.text = text11
        text2.text = text22
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
