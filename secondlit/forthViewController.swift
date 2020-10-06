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
    
    @IBOutlet var text2: UILabel!
    
    //@IBOutlet var text2: UILabel!
    
    //飼っているbutton
    @IBOutlet var YesButton: UIButton!
    
    //飼いたいbutton
    @IBOutlet var NoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textshow()
        YesButton.setTitle("私個人の意見", for: .normal)
        //NoButton.setTitle("飼いたい人へ", for: .normal)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func have() {
        
    }
    //text 表示
    func textshow() {
        thanks.text = String("見てくれてありがとうございます．")
        text1.text = String("このアプリを真剣に考えてくれたあなたならペットを幸せにできます．知識が足りなかったとしても，このアプリを通して，知るきっかけを提供できたので調べたり，考えてくだされば大丈夫です．生き物を大切にできる方々に悪い方はいません．しかし，最後に一つ考えて欲しいことがあります．")
        text2.text = String("良い飼い主ってなんですか？")
    }

    //
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
