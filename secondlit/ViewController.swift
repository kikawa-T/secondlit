//
//  ViewController.swift
//  secondlit
//
//  Created by tatsuomi kikawa on 2020/10/03.
//

import UIKit
import MorphingLabel
//import LTMorphingLabel

class ViewController: UIViewController {

    //ストーリーボードのlabel
    @IBOutlet var FirstLabel : LTMorphingLabel!
    
    //@IBOutlet var FirstLabel: UILabel!
    
    //labelで表示する配列
    var firstLabelArray : [String] = ["ペットって可愛いですよね","私も皆さんと同じで", "犬が大好きです", "だからこそ","一緒に","命を預かることについて","改めて考えてみませんか？"]
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
            timer = Timer.scheduledTimer(timeInterval: 1.50, target: self, selector: #selector(self.Time), userInfo: nil, repeats: true)
        }
    }
    //文字を表示するメソッド
    func set() {
        FirstLabel.text = firstLabelArray[count]
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
