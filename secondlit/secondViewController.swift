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
    
    //Array of HaveYesButtonLabel 8
    var YesArrayHave: [String] = ["繁殖の対策または適切な知識を持っていますか？", "病気になったら，すぐに対処できますか？", "狂犬病予防接種と犬の登録をしましたか？", "混合ワクチンを摂取しましたか？", "適切に犬と触れ合えていますか？", "犬にルールを教えていますか？", "しっかり遊んでいますか？", "ご近所に配慮していますか？"]
    var count2: Int  = 0
    //Array of HaveNoButtonLabel 8
    var NoArrayHave: [String] = ["子犬を飼うつもりがありますか？", "犬が病気になった時にすぐに行けるように近くの動物病院を調べておきましょう．また，病気には高価なものもあるため，動物保険も調べてみてはいかがですか？", "義務であるため，しっかりやっておきましょう．また，狂犬病予防接種は，年に1回必要です．", "重度の感染症を防ぐための予防注射があります．ノミやダニの予防もあるため見てみてください．","犬と触れ合うことで病気や怪我の早期発見ができます．ストレスがたまらないよう適切な触り方ができるように心がけましょう．", "トイレや食事などにはルールを教えてあげないと犬は勝手には守ってくれません．誘導したり，褒めてあげたりすることで覚えさせてあげましょう．", "しっかり遊んであげないと，吠えたり，物を壊してしまいます．", "近所の方に迷惑かけないことも大事です．散歩の時の後処理や吠えることのしつけ，防音対策などしてあげましょう．"]
    var count3: Int = 0
    //Array of DontHaveYesButtonLabel 8
    var YesArrayDonthave: [String] = ["犬種は決まっていますか？", "犬種によって病気のなりやすさ，性格の違いを知っていますか？","10年以上ペットを飼える状態でありますか？", "家族全員が納得していますか？", "歳を取った犬を介護できますか？", "飼いたい犬を飼う上でどれくらいのお金がかかるか知ってますか？", "犬のためにしっかり時間を取れますか？", "ペットショップ以外にもブリーダーや親里募集があることを知っていますか？"]
    var count4: Int = 0
    //Array of DontHaveNoButtonLabel 8
    var NoArrayDonthave: [String] = ["犬種によって飼いやすさもかなり異なります．ペットショップに行って考えるだけでなく，事前に調べてみたらいかがですか．", "動物病院のホームページでは，このようなことを伝えてくださっているところもあるので，調べてみると良いですよ．", "犬の寿命は，10年以上です．それだけの長い時間の命を預かることを知りましょう．", "ペットは家族の一員です．一人の意思で変えることはありません．しっかり話し合って決断しましょう．", "高齢者の方々が介護を必要とするのと同様に犬にも介護は必要です．その責任があることを覚えておいてください．", "生涯費用が小型犬で340万〜360万で，大型犬がその100万ほど高い感じです．経済的な部分は大切なので見通しを持っておきましょう．", "散歩はもちろん遊んであげること，触れ合ってあげる時間を取ってあげなければいけません．わんちゃんは寂しくなってしまい，怒って反抗してきます．それではせっかく飼ってもお互い不幸ではないでしょうか？","ペットショップはもちろん，SNSからの募集，ブリーダー，保健所など様々なところで飼うことができます．自分にあった場所を探してみてください．"]
    var count5: Int = 0
    //have question1
    var SecondTextYes1 = String("生まれた子犬は，健康面や環境に慣れるのが大変です．前もって準備しておきましょう．")
    var SecondTextNo1 = String("子犬は避妊・去勢手術をしなければ勝手にできてしまいます．飼わないならばしっかり手術をしましょう．")

    
    //SwitchCount
    var SwitchCountNo: Int!
    var SwitchCountYes: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        YesButton.setTitle("飼っている", for: .normal)
        NoButton.setTitle("飼いたい", for: .normal)
        secondLabel.text = String("あなたは，犬を...")
        SwitchCountYes = 2
        SwitchCountNo = 2
    }
    
    //画面遷移
    func transition() {
        self.performSegue(withIdentifier: "NextPage2", sender: nil)
    }
    //YesButton
    @IBAction func Yes() {
        switch SwitchCountYes {
        case 0://Yesを押した時(飼いたい側)
            count4 = count4 + 1
            count5 = count5 + 1
            if count4 == 8 {
                transition()
            } else {
                secondLabel.text = YesArrayDonthave[count4]
            }
        case 1://次を押した時(飼いたい側)
            count4 = count4 + 1
            SwitchCountNo = 0
            SwitchCountYes = 0
            if count4 == 8 {
                transition()
            } else {
                secondLabel.text = YesArrayDonthave[count4]
                YesButton.setTitle("はい", for: .normal)
                NoButton.setTitle("いいえ", for: .normal)
            }
        case 2://飼っている側へのシフト
            SwitchCountYes = 3
            SwitchCountNo = 3
            YesButton.setTitle("はい", for: .normal)
            NoButton.setTitle("いいえ", for: .normal)
            secondLabel.text = YesArrayHave[count2]
        case 3://Yesを押した時(飼っている側)
            count3 = count3 + 1
            count2 = count2 + 1
            if count2 == 8 {
                transition()
            } else {
                secondLabel.text = YesArrayHave[count2]
            }
        case 4://次を押した時(飼っている側)
            count2 = count2 + 1
            SwitchCountYes = 3
            SwitchCountNo = 3
            if count2 == 8 {
                transition()
            } else {
                secondLabel.text = YesArrayHave[count2]
                YesButton.setTitle("はい", for: .normal)
                NoButton.setTitle("いいえ", for: .normal)
            }
        case 5://第二分岐
            secondLabel.text = SecondTextYes1
            SwitchCountYes = 4
            //SwitchCountNo = 3
            YesButton.setTitle("次へ", for: .normal)
            NoButton.setTitle("", for: .normal)
        default:
            break
        }
    }
    //NoButton
    @IBAction func No() {
        switch  SwitchCountNo {
        case 0://NOを押した時(飼いたい側)
            secondLabel.text = NoArrayDonthave[count5]
            count5 = count5 + 1
            SwitchCountYes = 1
            YesButton.setTitle("次へ", for: .normal)
            NoButton.setTitle("", for: .normal)
        case 2://飼いたい側のシフト
            SwitchCountYes = 0
            SwitchCountNo = 0
            YesButton.setTitle("はい", for: .normal)
            NoButton.setTitle("いいえ", for: .normal)
            secondLabel.text = YesArrayDonthave[count4]
        case 3://Noを押した時(飼っている側)
            if count3 == 0 {
                secondLabel.text = NoArrayHave[count3]
                count3 = count3 + 1
                SwitchCountYes = 5
                SwitchCountNo = 5
                YesButton.setTitle("はい", for: .normal)
                NoButton.setTitle("いいえ", for: .normal)
            } else {
                secondLabel.text = NoArrayHave[count3]
                count3 = count3 + 1
                SwitchCountYes = 4
                YesButton.setTitle("次へ", for: .normal)
                NoButton.setTitle("", for: .normal)
            }
        case 5://第二分岐
            secondLabel.text = SecondTextNo1
            SwitchCountYes = 4
            YesButton.setTitle("次へ", for: .normal)
            NoButton.setTitle("", for: .normal)
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
