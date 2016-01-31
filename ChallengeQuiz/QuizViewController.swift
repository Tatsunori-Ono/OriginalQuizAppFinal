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
        super.viewDidLoad()
        
//        一時的にクイズ配列
        var tmpArray = [AnyObject] ()
        
//        tmpArrayに問題文と３つの選択と答えの番号の入った配列を追加していく
        tmpArray.append (["問題文1","選択肢","選択肢2","選択肢3",1])
        tmpArray.append (["問題文2","選択肢","選択肢2","選択肢3",2])
        tmpArray.append (["問題文3","選択肢","選択肢2","選択肢3",2])
        tmpArray.append (["問題文4","選択肢","選択肢2","選択肢3",3])
        tmpArray.append (["問題文5","選択肢","選択肢2","選択肢3",3])
        tmpArray.append (["問題文6","選択肢","選択肢2","選択肢3",3])
        
        
//        問題をシャッフルしてquizArray
        srand(UInt32(time(nil)))
        while (tmpArray.count > 0) {
            let index = Int(rand()) % tmpArray.count
            quizArray.append(tmpArray[index])
            tmpArray.removeAtIndex(index)
        }
        chiceQuiz()
    }
    
    func choiceQuiz() {
        
        //問題文のテキストを表示
        quizTextView.text  = quizArray[0] [0] as! String
        
        //選択肢のボタンにそれぞれ選択肢のテキストをセット
        choiceButton1.setTittle((quizArray[0] [1] as! String), forState: .Normal)
        choiceButton2.setTittle((quizArray[0] [2] as! String), forState: .Normal)
        choiceButton3.setTittle((quizArray[0] [3] as! String), forState: .Normal)
    }
    
    @IBAction func chiceAnswer(sender: UIButton) {
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
            
            let resultView = segue.destinationViewController as! resultViewController
            resultView.correctAnswer  = self.correctAnswer
        }
    }
    
        // Do any additional setup after loading the view.
    }

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


