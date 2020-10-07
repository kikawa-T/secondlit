//
//  thirdViewController.swift
//  secondlit
//
//  Created by tatsuomi kikawa on 2020/09/25.
//

import UIKit
import MorphingLabel

class thirdViewController: UIViewController {

    @IBOutlet var thirdLabel : LTMorphingLabel!
    
   // @IBOutlet var thirdLabel2 : LTMorphingLabel!
    
    //labelで表示する配列
    var thirdLabelArray : [String] = ["犬は人間と同じ生き物です．", "歳を取ると元気がなくなります．", "不満があると吠えます", "怒られると反抗します", "散歩しないとストレスもたまります", "それでも可愛いです．","家族ですから．", "大切に飼ってくれますか？"]
   // var thirdLabel2Array : [String] = ["", "元気がなくなります．", "", "", "ストレスもたまります．", "家族ですから．", ""]
    //配列番号
    var count: Int = 0
  //  var count2: Int = 0
    //配列の最大値
    var OutOfRange: Int = 8
    //timer
    var timer = Timer()
    //var timer2 = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        set()
        start()
        // Do any additional setup after loading the view.
    }
    
    //Timerを動作させるメソッド
    func start() {
        if !timer.isValid {
            timer = Timer.scheduledTimer(timeInterval: 1.80, target: self, selector: #selector(self.Time), userInfo: nil, repeats: true)
        }
       /* if !timer2.isValid {
            timer2 = Timer.scheduledTimer(timeInterval: 2.50, target: self, selector: #selector(self.Time2), userInfo: nil, repeats: true)
        }*/
    }
    //文字を表示するメソッド
    func set() {
        thirdLabel.text = thirdLabelArray[count]
        //thirdLabel.numberOfLines  = 0
        //thirdLabel2.text = thirdLabel2Array[count2]
    }
    /*@objc func Time2() {
        count2 = count2 + 1
        if count2 == OutOfRange {
            timer2.invalidate()
        } else {
            set()
        }
    }*/
    //配列を進める
    @objc func Time() {
        count = count + 1
        //ボタンの作成
        if count == OutOfRange {
            timer.invalidate()
            let button = UIButton(type: UIButton.ButtonType.system)
            button.addTarget(self, action: #selector(buttonEvent(_:)), for: UIControl.Event.touchUpInside)
            button.setTitleColor(UIColor.black, for: UIControl.State.normal)//color
            button.setTitle("はい", for: UIControl.State.normal)//label
            button.frame = CGRect(x: 110, y: 500, width: 170, height: 100)//size
            button.backgroundColor = UIColor.white
            button.titleLabel?.font =  UIFont.boldSystemFont(ofSize: 25)
            button.layer.cornerRadius = 50
            self.view.addSubview(button)
        } else {
            set()
        }
    }
    //ボタンを押すことで画面遷移
    @objc func buttonEvent(_ sender: UIButton) {
        self.performSegue(withIdentifier: "NextPage3", sender: nil)
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
