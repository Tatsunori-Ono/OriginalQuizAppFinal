//
//  OuizViewController.swift
//  ChallengeQuiz
//
//  Created by Tatsunori Ono on 2016/01/31.
//  Copyright © 2016年 Tatsunori Ono. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    //    問題文をの配列
    var quizArray  = [AnyObject] ()
    
    //    正解数
    var correctAnswer: Int = 0
    
    //    クイズを表示するTextView
    @IBOutlet var quizTextView: UITextView!
    
    //    選択のボタン
    @IBOutlet var choiceButton1: UIButton!
    @IBOutlet var choiceButton3: UIButton!
    @IBOutlet var choiceButton2: UIButton!
    
    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        //        一時的にクイズ配列
//        var tmpArray = [AnyObject] ()
//        
//        //        tmpArrayに問題文と３つの選択と答えの番号の入った配列を追加していく
//        tmpArray.append (["坂本龍馬の誕生日はいつでしょう？","1836年1月５日","1836年1月３日","1836年1月４日",2])
//        tmpArray.append (["人気のお菓子かむかむレモン、一粒に配合されているビタミンCは？","500mg","300mg","200mg",3])
//        tmpArray.append (["福沢諭吉の誕生日はいつでしょう？","1835年1月10日","1835年1月12日","1835年1月11日",1])
//        tmpArray.append (["iphone6またはiphone6plusが発売された日は何でしょう？","9月19日","9月1日","9月13日",1])
//        tmpArray.append (["野口英世は何歳で死を告げましたか？","50歳","56歳","51歳",3])
//        tmpArray.append (["人気ゲーム会社、LEVEL5のゲーム妖怪ウォッチ2真打の発売日は？","2014年12月13日","2014年12月14日","2014年12月4日",1])
//        tmpArray.append (["大人気映画スターウオーズ(StarWars)、ダースベイダーの正体は？","ジェダイ戦士のアーサークルースキング","ジェダイ戦士のアナキン","ジェダイ戦士のアネキン",2])
//        tmpArray.append (["大人気ゲーム妖怪ウォッチの主人公、ケータが初めて出会った妖怪は？","ジャスパー","ウィスパー","グーチョキパー",3])
//        tmpArray.append (["藤子・F・不二雄が生まれた日は？","1933年12月7日","1933年12月13日","1933年12月1日",3])
//        tmpArray.append (["大人気アーチィスト、いきものがかりが結成された年はなんでしょう？","1999年","2000年","1998年",1])
//        tmpArray.append (["大人気ゲームマインクラフト、もう一つの世界、ネザーに行くにはなんの材料が必要？","火打ち石と打ち金１個とグローストーン９個","火打ち石と打ち金とTNT１個","火打ち石と打ち金１個と黒曜石９個",3])
//        tmpArray.append (["有名な小説アメニモマケズの作者は？","宮沢賢治","坂本賢治","福沢賢治",1])
//        tmpArray.append (["有名な小説,火花の作者は？","樋口一葉","ありえ　ないぞう","又吉 直樹",3])
//        tmpArray.append (["上にいるピンクの物体の誕生日は？","8月13日","3月3日","9月９日",1])
//        tmpArray.append (["iphone6sまたはiphon6splusが発売された年は？","2015年","2016年","2010年",1])
//        tmpArray.append (["３＋３＝？","サンタクロース","６","９",2])
//        tmpArray.append (["iphoneを開発したステーブジョブスが死を告げた日は？","2011年12月5日","2011年11月5日","2011年10月5日",3])
//        tmpArray.append (["iphone4sが発売された日は？","2011年10月14日","2011年11月14日","2011年11月15日",1])
//        tmpArray.append (["英語で[文房具]は？","stationery","cat","dog",1])
//        tmpArray.append (["英語で[USB]は","USB","UnlimitedStorgeBydivice","77",1])
//        tmpArray.append (["英語で[犬]は？","cat","dog","hot dog",2])
//        tmpArray.append (["英語で[猫]は？","mat","sat","cat",3])
//        tmpArray.append (["英語で[コウモリ]は？","Bat","cat","let",1])
//        tmpArray.append (["英語で[アヒル]は？","Duck","Mac","Luck",1])
//        tmpArray.append (["英語で[ペンギン]は？","not Penguin","Penguin","Penglish",2])
//        tmpArray.append (["英語で[カタツムリ]は？","LOL","nail","snail",3])
//        tmpArray.append (["英語で[かぼちゃ]は？","pumpukin","kumpukin","sumpkin",1])
//        
//  
//
//        
//        
//        //        問題をシャッフルしてquizArray
//        srand(UInt32(time(nil)))
//        while (tmpArray.count > 0) {
//            let index = Int(rand()) % tmpArray.count
//            quizArray.append(tmpArray[index])
//            tmpArray.removeAtIndex(index)
//        }
//        
//        
//        self.choiceQuiz()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidLoad()
        
        correctAnswer=0
        
        //        一時的にクイズ配列
        var tmpArray = [AnyObject] ()
        
        //        tmpArrayに問題文と３つの選択と答えの番号の入った配列を追加していく
        tmpArray.append (["坂本龍馬の誕生日はいつでしょう？","1836年1月５日","1836年1月３日","1836年1月４日",2])
        tmpArray.append (["人気のお菓子かむかむレモン、一粒に配合されているビタミンCは？","500mg","300mg","200mg",3])
        tmpArray.append (["福沢諭吉の誕生日はいつでしょう？","1835年1月10日","1835年1月12日","1835年1月11日",1])
        tmpArray.append (["iphone6またはiphone6plusが発売された日は何でしょう？","9月19日","9月1日","9月13日",1])
        tmpArray.append (["野口英世は何歳で死を告げましたか？","50歳","56歳","51歳",3])
        tmpArray.append (["人気ゲーム会社、LEVEL5のゲーム妖怪ウォッチ2真打の発売日は？","2014年12月13日","2014年12月14日","2014年12月4日",1])
        tmpArray.append (["大人気映画スターウオーズ(StarWars)、ダースベイダーの正体は？","ジェダイ戦士のアーサークルースキング","ジェダイ戦士のアナキン","ジェダイ戦士のアネキン",2])
        tmpArray.append (["大人気ゲーム妖怪ウォッチの主人公、ケータが初めて出会った妖怪は？","ジャスパー","ウィスパー","グーチョキパー",3])
        tmpArray.append (["藤子・F・不二雄が生まれた日は？","1933年12月7日","1933年12月13日","1933年12月1日",3])
        tmpArray.append (["大人気アーチィスト、いきものがかりが結成された年はなんでしょう？","1999年","2000年","1998年",1])
        tmpArray.append (["大人気ゲームマインクラフト、もう一つの世界、ネザーに行くにはなんの材料が必要？","火打ち石と打ち金１個とグローストーン９個","火打ち石と打ち金とTNT１個","火打ち石と打ち金１個と黒曜石９個",3])
        tmpArray.append (["有名な小説アメニモマケズの作者は？","宮沢賢治","坂本賢治","福沢賢治",1])
        tmpArray.append (["有名な小説,火花の作者は？","樋口一葉","ありえ　ないぞう","又吉 直樹",3])
        tmpArray.append (["上にいるピンクの物体の誕生日は？","8月13日","3月3日","9月９日",1])
        tmpArray.append (["iphone6sまたはiphon6splusが発売された年は？","2015年","2016年","2010年",1])
        tmpArray.append (["３＋３＝？","サンタクロース","６","９",2])
        tmpArray.append (["iphoneを開発したステーブジョブスが死を告げた日は？","2011年12月5日","2011年11月5日","2011年10月5日",3])
        tmpArray.append (["iphone4sが発売された日は？","2011年10月14日","2011年11月14日","2011年11月15日",1])
        tmpArray.append (["英語で[文房具]は？","stationery","cat","dog",1])
        tmpArray.append (["英語で[USB]は","USB","UnlimitedStorgeBydivice","77",1])
        tmpArray.append (["英語で[犬]は？","cat","dog","hot dog",2])
        tmpArray.append (["英語で[猫]は？","mat","sat","cat",3])
        tmpArray.append (["英語で[コウモリ]は？","Bat","cat","let",1])
        tmpArray.append (["英語で[アヒル]は？","Duck","Mac","Luck",1])
        tmpArray.append (["英語で[ペンギン]は？","not Penguin","Penguin","Penglish",2])
        tmpArray.append (["英語で[カタツムリ]は？","LOL","nail","snail",3])
        tmpArray.append (["英語で[かぼちゃ]は？","pumpukin","kumpukin","sumpkin",1])
        
        
        
        
        
        //        問題をシャッフルしてquizArray
        srand(UInt32(time(nil)))
        while (tmpArray.count > 0) {
            let index = Int(rand()) % tmpArray.count
            quizArray.append(tmpArray[index])
            tmpArray.removeAtIndex(index)
        }
        
        
        self.choiceQuiz()

    }
    
    func choiceQuiz() {
        
        //問題文のテキストを表示
        quizTextView.text  = quizArray[0] [0] as! String
        
        //選択肢のボタンにそれぞれ選択肢のテキストをセット
        choiceButton1.setTitle((quizArray[0] [1] as! String), forState: .Normal)
        choiceButton2.setTitle((quizArray[0] [2] as! String), forState: .Normal)
        choiceButton3.setTitle((quizArray[0] [3] as! String), forState: .Normal)
    }
    
    @IBAction func choiceAnswer(sender: UIButton) {
        if quizArray [0] [4] as! Int == sender.tag {
            
            // 正解数を増やす
            correctAnswer++
        }
        
        //解いた問題をquizArrayから取り除く
        quizArray.removeAtIndex(0)
        
        //解いた問題数の合計が予め設定していた問題数に達したら結果画面へ
        if quizArray.count == 0 {
            performSegueToResult()
        }else{
            choiceQuiz()
        }
        
        
    }
    
    
    
    func performSegueToResult() {
        performSegueWithIdentifier("toResultView", sender: nil)
        
    }
    
    //    セグエが選ばれた時に呼ばれるメソッド
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "toResultView") {
            
            let resultView = segue.destinationViewController as! ResultViewController
            resultView.correctAnswer  = self.correctAnswer
        }
    }
    
    // Do any additional setup after loading the view.
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
    
}