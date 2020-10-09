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
        back.layer.cornerRadius = 80
        result()
        // Do any additional setup after loading the view.
    }
    //havecount = 0, donthavecount = 10
    func result() {
        let count = saveData.integer(forKey: "count")
        //print(count)
        switch (count) {
        case 0...4:
            sixtext.text = String("良い飼い主になろうとしてくれている気持ちはありがたいです！これをきっかけに，もっとペットについて調べてみてください！")
        case 5...7:
            sixtext.text = String("惜しい！ペットに愛情を伝えるためにはもう少しです！")
        case 8:
            sixtext.text = String("素晴らしい！きっと，素敵な飼い主でしょう．ペットも喜んでいると思いますよ！")
        case 10...14:
            sixtext.text = String("飼いたい気持ちはすごい嬉しいです！焦る必要もないので生活の余裕や環境が整ってからでも遅くはないですよ．")
        case 15...17:
            sixtext.text = String("惜しい！大切に育ててくれるに違いないですが，知らなかったことをおさえておけば，もしもの時に役立ちますよ！")
        case 18:
            sixtext.text = String("ぜひ，ペットを飼ってあげてください！あなたのような人が増えると嬉しいです！")
        default:
            break
        }
        print(count)
        if count == 0 || count == 10 {
            score.text = String("20点")
        } else if count == 1 || count == 11{
            score.text = String("30点")
        } else if count == 2 || count == 12 {
            score.text = String("40点!")
        } else if count == 3 || count == 13 {
            score.text = String("50点!")
        } else if count == 4 || count == 14 {
            score.text = String("60点!!")
        } else if count == 5 || count == 12 {
            score.text = String("70点!!")
        } else if count == 6 || count == 13 {
            score.text = String("80点!!!")
        } else if count == 7 || count == 14 {
            score.text = String("90点!!!")
        } else if count == 8 || count == 18 {
            score.text = String("100点!!!!")
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
