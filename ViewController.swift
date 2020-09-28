//
//  ViewController.swift
//  secondlit
//
//  Created by tatsuomi kikawa on 2020/09/25.
//

import UIKit

class ViewController: UIViewController {

    //ストーリーボードのlabel
    @IBOutlet var firstLabel : UILabel!
    //labelで表示する配列
    var firstLabelArray : [String] = ["ペットって可愛いですよね", "でも人と同じで生き物であることを理解していますか？", "これは，良い飼い主になるためのアプリです．" ]
    //配列番号
    var count: Int = 0
    //配列の最大値
    var OutOfRange: Int = 3
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
        firstLabel.text = firstLabelArray[count]
    }
    
    @objc func Time() {
        count = count + 1
        if count == OutOfRange {
            timer.invalidate()
            self.performSegue(withIdentifier: "NextPage", sender: nil)
        } else {
            set()
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
