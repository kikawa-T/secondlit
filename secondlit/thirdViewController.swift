//
//  thirdViewController.swift
//  secondlit
//
//  Created by tatsuomi kikawa on 2020/09/25.
//

import UIKit

class thirdViewController: UIViewController {

    @IBOutlet var thirdLabel : UILabel!
    //labelで表示する配列
    var thirdLabelArray : [String] = ["犬は人間と同じ生き物です．", "歳を取ると元気がなくなります．", "不満があると吠えます", "怒られると反抗します", "散歩しなければストレスもたまります．", "それでも可愛いです．家族ですから．", "大切に飼ってくれますか？"]
    //配列番号
    var count: Int = 0
    //配列の最大値
    var OutOfRange: Int = 7
    //timer
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        set()
        start()
        // Do any additional setup after loading the view.
    }
    
    //Timerを動作させるメソッド
    func start() {
        if !timer.isValid {
            timer = Timer.scheduledTimer(timeInterval: 2.00, target: self, selector: #selector(self.Time), userInfo: nil, repeats: true)
        }
    }
    //文字を表示するメソッド
    func set() {
        thirdLabel.text = thirdLabelArray[count]
    }
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
            button.frame = CGRect(x: 0, y: 0, width: 170, height: 100)//size
            button.backgroundColor = UIColor.systemGray5
            button.titleLabel?.font =  UIFont.boldSystemFont(ofSize: 25)
            button.layer.cornerRadius = 50
            button.center = self.view.center
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
