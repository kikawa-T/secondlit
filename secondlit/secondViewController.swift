//
//  secondViewController.swift
//  secondlit
//
//  Created by tatsuomi kikawa on 2020/09/25.
//

import UIKit

class secondViewController: UIViewController {

    //questionLabel
    @IBOutlet var secondLabel: UILabel!
    
    //yesbutton
    @IBOutlet var YesButton: UIButton!
    
    //Nobutton
    @IBOutlet var NoButton: UIButton!
    
    //Array of questionLabel
    var labelArray: [String] = []
    
    //Array of HaveYesButtonLabel
    var YesArrayHave: [String] = []
    
    //Array of HaveNoButtonLabel
    var NoArrayHave: [String] = []
    
    //Array of DontHaveYesButtonLabel
    var YesArrayDonthave: [String] = ["犬種は決まっていますか？", "犬種によって病気のなりやすさ，性格の違いを知っていますか？", "10年以上ペットを飼える状態でありますか？", "家族全員が納得していますか？", "歳を取った犬を介護できますか？", "飼いたい犬を飼う上でどれくらいのお金がかかるか知ってますか？", "犬のためにしっかり時間を取れますか？", "ペットショップ以外にもブリーダーや親里募集があることを知っていますか？"]
    var count4: Int = 0
    //Array of DontHaveNoButtonLabel
    var NoArrayDonthave: [String] = ["犬種によって飼いやすさもかなり異なります．ペットショップに行って考えるだけでなく，事前に調べてみたらいかがですか．", "動物病院のホームページでは，このようなことを伝えてくださっているところもあるので，調べてみると良いですよ．", "犬の寿命は，10年以上です．それだけの長い時間の命を預かることを知りましょう．", "ペットは家族の一員です．一人の意思で変えることはありません．しっかり話し合って決断しましょう．", "高齢者の方々が介護を必要とするのと同様に犬にも介護は必要です．その責任があることを覚えておいてください．", "飼うのは大型犬ですか？小型犬ですか？", "散歩はもちろん遊んであげること，触れ合ってあげる時間を取ってあげなければいけません．わんちゃんは寂しくなってしまい，怒って反抗してきます．それではせっかく飼ってもお互い不幸ではないでしょうか？","ペットショップはもちろん，SNSからの募集，ブリーダー，保健所など様々なところで飼うことができます．自分にあった場所を探してみてください．"]
    var count5: Int = 0
    
    //SwitchCount
    var SwitchCountNo: Int = 0
    var SwitchCountYes: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        YesButton.setTitle("はい", for: .normal)
        NoButton.setTitle("いいえ", for: .normal)
        secondLabel.text = YesArrayDonthave[count4]
    }
    
    //YesButton
    @IBAction func Yes() {
        switch SwitchCountYes {
        case 0:
            count4 = count4 + 1
            count5 = count5 + 1
            secondLabel.text = YesArrayDonthave[count4]
        case 1:
            count4 = count4 + 1
            SwitchCountNo = 0
            SwitchCountYes = 0
            secondLabel.text = YesArrayDonthave[count4]
            YesButton.setTitle("はい", for: .normal)
        default:
            break
        }
        if count4 == 7 {
            self.performSegue(withIdentifier: "NextPage2", sender: nil)
        }
    }
    //NoButton
    @IBAction func No() {
        switch  SwitchCountNo {
            case 0:
                secondLabel.text = NoArrayDonthave[count5]
                count5 = count5 + 1
                SwitchCountYes = 1
                YesButton.setTitle("次へ", for: .normal)
            //case 1:
                //count4 = count4 + 1
               // secondLabel.text = YesArrayDonthave[count4]
               // SwitchCountNo = 0
            default:
            break
        }
    }
    
    func set(sender: AnyObject) {
        //buttonに設定されたtagを取得
        //let No:UIButton = sender as! UIButton//tag..1
        //let Yes:UIButton = sender as! UIButton//tag..2
        //secondLabel.text = YesArrayDonthave[]
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
