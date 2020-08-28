//
//  ViewController.swift
//  Hangmannation
//
//  Created by Said Yaka on 12/21/17.
//  Copyright © 2017 Said Yaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //
    
    @IBOutlet weak var Legs: UIImageView!
    @IBOutlet weak var Head: UIImageView!
    @IBOutlet weak var Arms: UIImageView!
    @IBOutlet weak var Body: UIImageView!
    @IBOutlet weak var Hanger: UIImageView!
    
    @IBOutlet weak var A: UIButton!
    @IBOutlet weak var B: UIButton!
    @IBOutlet weak var C: UIButton!
    @IBOutlet weak var D: UIButton!
    @IBOutlet weak var E: UIButton!
    @IBOutlet weak var F: UIButton!
    @IBOutlet weak var G: UIButton!
    @IBOutlet weak var H: UIButton!
    @IBOutlet weak var I: UIButton!
    @IBOutlet weak var J: UIButton!
    @IBOutlet weak var K: UIButton!
    @IBOutlet weak var L: UIButton!
    @IBOutlet weak var M: UIButton!
    @IBOutlet weak var N: UIButton!
    @IBOutlet weak var O: UIButton!
    @IBOutlet weak var P: UIButton!
    @IBOutlet weak var Q: UIButton!
    @IBOutlet weak var R: UIButton!
    @IBOutlet weak var S: UIButton!
    @IBOutlet weak var T: UIButton!
    @IBOutlet weak var U: UIButton!
    @IBOutlet weak var V: UIButton!
    @IBOutlet weak var W: UIButton!
    @IBOutlet weak var X: UIButton!
    @IBOutlet weak var Y: UIButton!
    @IBOutlet weak var Z: UIButton!
    @IBOutlet weak var Continue: UIButton!
    
    
    
    //
   
    // Use your own words the indices are the same
    var shoppingList: [String] = ["Apple", "BLackberry"]
    var definitions : [String] = ["type of Fruit/Tech brand", "type of Fruit/Old phone brand"]
    
 var  buttonReset = false
    
    var secretWord : [String] = []
    var counter = 0
    var dashes:[String] = []
    var rand: Int = Int(arc4random_uniform(5))
   var secret = ""
    var replace = ""
    var score = 0
    var GuessCounter = 0
    var def = ""
    @IBOutlet weak var Score: UILabel!
    @IBOutlet weak var Word: UILabel!
    
    @IBOutlet weak var Hint: UILabel!
    @IBOutlet weak var LettersUsed: UILabel!
    var secretWordArray: [Character] = []
    var boi = ""
    var guessCorrect = false
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
 Continue.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
        Word.font = Word.font.withSize(50)
        Word.adjustsFontSizeToFitWidth = true
        Word.textAlignment = .center
        Hint.font = Word.font.withSize(20)
        Hint.adjustsFontSizeToFitWidth = true
        Hint.textAlignment = .center
        Hint.text = ""
        Word.text = ""
 Continue.setTitle("⃗", for: .normal)
     
    
    newWord()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    func newWord(){
        GuessCounter = 0
        dashes.removeAll()
        secretWord.removeAll()
        boi = ""
        replace = ""
        
        
        rand = Int(arc4random_uniform(UInt32(shoppingList.count)))
        secret = shoppingList[rand].uppercased()
       def = definitions[rand]
        for character in secret {
            secretWord.append(String(character))
        }
        
        for character in secretWord {
            dashes.append("_")
        }
        bodyReset()
        var replaced = ""
        for character in dashes {
            replaced += String(character)
            replaced += " "
        }
        Word.text = replaced
        for character in dashes {
            replace += String(character)
            replace += " "
           
        }
        showDefinition()
        shoppingList.remove(at: rand)
        definitions.remove(at: rand)
        reset()
        
   
    }
    func buttonHide() {
     
        A.isHidden = true
        B.isHidden = true
        C.isHidden = true
        D.isHidden = true
        E.isHidden = true
        F.isHidden = true
        G.isHidden = true
        H.isHidden = true
        I.isHidden = true
        J.isHidden = true
        K.isHidden = true
        L.isHidden = true
        M.isHidden = true
        N.isHidden = true
        O.isHidden = true
        P.isHidden = true
        Q.isHidden = true
        R.isHidden = true
        S.isHidden = true
        T.isHidden = true
        U.isHidden = true
        V.isHidden = true
        W.isHidden = true
        X.isHidden = true
        Y.isHidden = true
        Z.isHidden = true
        
    }
    func bodyReset(){
    Hanger.isHidden = true
    Head.isHidden = true
    Body.isHidden = true
    Arms.isHidden = true
    Legs.isHidden = true
    
    }
    func reset() {
        A.isHidden = false
        B.isHidden = false
        C.isHidden = false
        D.isHidden = false
        E.isHidden = false
        F.isHidden = false
        G.isHidden = false
        H.isHidden = false
        I.isHidden = false
        J.isHidden = false
        K.isHidden = false
        L.isHidden = false
        M.isHidden = false
        N.isHidden = false
        O.isHidden = false
        P.isHidden = false
        Q.isHidden = false
        R.isHidden = false
        S.isHidden = false
        T.isHidden = false
        U.isHidden = false
        V.isHidden = false
        W.isHidden = false
        X.isHidden = false
        Y.isHidden = false
        Z.isHidden = false
   
        A.isEnabled = true
         B.isEnabled = true
         C.isEnabled = true
         D.isEnabled = true
         E.isEnabled = true
         F.isEnabled = true
         G.isEnabled = true
         H.isEnabled = true
         I.isEnabled = true
         J.isEnabled = true
         K.isEnabled = true
         L.isEnabled = true
         M.isEnabled = true
         N.isEnabled = true
         O.isEnabled = true
         P.isEnabled = true
         Q.isEnabled = true
         R.isEnabled = true
         S.isEnabled = true
         T.isEnabled = true
         U.isEnabled = true
         V.isEnabled = true
         W.isEnabled = true
         X.isEnabled = true
         Y.isEnabled = true
         Z.isEnabled = true
        A.setTitle("A", for: .normal)
        B.setTitle("B", for: .normal)
        C.setTitle("C", for: .normal)
        D.setTitle("D", for: .normal)
        E.setTitle("E", for: .normal)
        F.setTitle("F", for: .normal)
        G.setTitle("G", for: .normal)
        H.setTitle("H", for: .normal)
        I.setTitle("I", for: .normal)
        J.setTitle("J", for: .normal)
        K.setTitle("K", for: .normal)
        L.setTitle("L", for: .normal)
        M.setTitle("M", for: .normal)
        N.setTitle("N", for: .normal)
        O.setTitle("O", for: .normal)
        P.setTitle("P", for: .normal)
        Q.setTitle("Q", for: .normal)
        R.setTitle("R", for: .normal)
        S.setTitle("S", for: .normal)
        T.setTitle("T", for: .normal)
        U.setTitle("U", for: .normal)
        V.setTitle("V", for: .normal)
        W.setTitle("W", for: .normal)
        X.setTitle("X", for: .normal)
        Y.setTitle("Y", for: .normal)
        Z.setTitle("Z", for: .normal)
        A.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        B.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        C.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        D.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        E.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        F.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        G.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        H.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        I.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        J.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        K.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        L.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        M.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        N.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        O.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        P.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        Q.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        R.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        S.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        T.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        U.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        V.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        W.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        X.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        Y.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        Z.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        
        A.setTitleColor(UIColor.blue, for: .normal)
        B.setTitleColor(UIColor.blue, for: .normal)
        C.setTitleColor(UIColor.blue, for: .normal)
        D.setTitleColor(UIColor.blue, for: .normal)
        E.setTitleColor(UIColor.blue, for: .normal)
        F.setTitleColor(UIColor.blue, for: .normal)
        G.setTitleColor(UIColor.blue, for: .normal)
        H.setTitleColor(UIColor.blue, for: .normal)
        I.setTitleColor(UIColor.blue, for: .normal)
        J.setTitleColor(UIColor.blue, for: .normal)
        K.setTitleColor(UIColor.blue, for: .normal)
        L.setTitleColor(UIColor.blue, for: .normal)
        M.setTitleColor(UIColor.blue, for: .normal)
        N.setTitleColor(UIColor.blue, for: .normal)
        O.setTitleColor(UIColor.blue, for: .normal)
        P.setTitleColor(UIColor.blue, for: .normal)
        Q.setTitleColor(UIColor.blue, for: .normal)
        R.setTitleColor(UIColor.blue, for: .normal)
        S.setTitleColor(UIColor.blue, for: .normal)
        T.setTitleColor(UIColor.blue, for: .normal)
        U.setTitleColor(UIColor.blue, for: .normal)
        V.setTitleColor(UIColor.blue, for: .normal)
        W.setTitleColor(UIColor.blue, for: .normal)
        X.setTitleColor(UIColor.blue, for: .normal)
        Y.setTitleColor(UIColor.blue, for: .normal)
        Z.setTitleColor(UIColor.blue, for: .normal)
    
    }
    
    func scoreBoard(guesses: Int){
        score += (50 - guesses*10)
        Score.text = String(score)
    }

    func showDefinition(){
        Hint.text = def
    }
    func letterChecker(val: Character) {
        print (secret)
        var x = 0
        
        var letter = String(val)
        
        var c = secretWord.index(of: letter )
        if c == nil   {
          
            GuessCounter += 1
            
        }
        if (GuessCounter  == 1 ) {
            Hanger.isHidden = false
        }
        else if (GuessCounter == 2 ){
            Head.isHidden = false
        }
        else if (GuessCounter == 3 ) {
            Body.isHidden = false
        }
        else if (GuessCounter == 4 ){
             Arms.isHidden = false
        }
        else if (GuessCounter == 5 ){
            Legs.isHidden = false
                   Continue.isHidden = false
            reset()
            buttonHide()
            showDefinition()
               Continue.setTitleColor(UIColor.red, for: .normal)
            
           
        }
        for i in secretWord {
            if (i == letter){
                dashes[x] = letter
               guessCorrect = true
                
            }
            
            x += 1
            
        }
        var completeCheck = ""
         replace = ""
        for character in dashes {
            replace += String(character)
            replace += " "
            completeCheck += String(character)
        }
  
       LettersUsed.text = boi
        print(secretWord)
        Word.text = replace
        print(replace.count)
        print(dashes)
        if (completeCheck == secret){
             Continue.isHidden = false
            scoreBoard(guesses: GuessCounter)
            Continue.setTitleColor(UIColor.green, for: .normal)
           
            reset()
            buttonHide()
            showDefinition()
           
          
        }
    }
    
    
    
    func ButtonChanger(val: Bool, button: UIButton) {
       
        if val == true {
   
        button.setTitle("✔︎", for: .normal)
            
           
            button.setTitleColor(UIColor.green, for: .normal)
           
            
        } else {
            button.shake()
            button.setTitleColor(UIColor.red, for: .normal)
            button.setTitle("✖︎", for: .normal)
             button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
                   }
        
       button.isEnabled = false
        guessCorrect = false
       
    }
    
    @IBAction func A(_ sender: UIButton) {
      
     letterChecker(val: "A")
        ButtonChanger(val: guessCorrect, button: sender)
        
    }
    
    @IBAction func B(_ sender: UIButton) {
        letterChecker(val: "B")
        ButtonChanger(val: guessCorrect, button: sender)
    }
    
    @IBAction func C(_ sender:  UIButton) {
        
   letterChecker(val: "C")
    ButtonChanger(val: guessCorrect, button: sender)
        
    }
    
    @IBAction func D(_ sender:  UIButton) {
      letterChecker(val: "D")
         ButtonChanger(val: guessCorrect, button: sender)
    }
    
    @IBAction func E(_ sender:  UIButton) {
     letterChecker(val: "E")
         ButtonChanger(val: guessCorrect, button: sender)
    }
    @IBAction func F(_ sender:  UIButton) {
       letterChecker(val: "F")
         ButtonChanger(val: guessCorrect, button: sender)
    }
    @IBAction func G(_ sender:  UIButton) {
        letterChecker(val: "G")
         ButtonChanger(val: guessCorrect, button: sender)
    }
    @IBAction func H(_ sender:  UIButton) {
       letterChecker(val: "H")
         ButtonChanger(val: guessCorrect, button: sender)
    }
    @IBAction func I(_ sender:  UIButton) {
      letterChecker(val: "I")
         ButtonChanger(val: guessCorrect, button: sender)
    }
    
    @IBAction func J(_ sender:  UIButton) {
       letterChecker(val: "J")
         ButtonChanger(val: guessCorrect, button: sender)
    }
    
    @IBAction func K(_ sender:  UIButton) {
       letterChecker(val: "K")
         ButtonChanger(val: guessCorrect, button: sender)
    }
    @IBAction func L(_ sender:  UIButton) {
       letterChecker(val: "L")
         ButtonChanger(val: guessCorrect, button: sender)
    }
    
    @IBAction func M(_ sender:  UIButton) {
       letterChecker(val: "M")
         ButtonChanger(val: guessCorrect, button: sender)
    }
    
    @IBAction func N(_ sender:  UIButton) {
       letterChecker(val: "N")
     ButtonChanger(val: guessCorrect, button: sender)
    }
    
    @IBAction func O(_ sender:  UIButton) {
      letterChecker(val: "O")
         ButtonChanger(val: guessCorrect, button: sender)
    }
    
    @IBAction func P(_ sender:  UIButton) {
       letterChecker(val: "P")
         ButtonChanger(val: guessCorrect, button: sender)
    }
    @IBAction func Q(_ sender:  UIButton) {
      letterChecker(val: "Q")
         ButtonChanger(val: guessCorrect, button: sender)
    }
    
    @IBAction func R(_ sender:  UIButton) {
       letterChecker(val: "R")
         ButtonChanger(val: guessCorrect, button: sender)
    }
    @IBAction func S(_ sender:  UIButton) {
       letterChecker(val: "S")
         ButtonChanger(val: guessCorrect, button: sender)
    }
    
    @IBAction func T(_ sender:  UIButton) {
      letterChecker(val: "T")
         ButtonChanger(val: guessCorrect, button: sender)
    }
    
    @IBAction func U(_ sender:  UIButton) {
       letterChecker(val: "U")
         ButtonChanger(val: guessCorrect, button: sender)
    }
    
    @IBAction func V(_ sender:  UIButton) {
       letterChecker(val: "V")
         ButtonChanger(val: guessCorrect, button: sender)
    }
    @IBAction func W(_ sender:  UIButton) {
      letterChecker(val: "W")
     ButtonChanger(val: guessCorrect, button: sender)
    }
    
    @IBAction func X(_ sender:  UIButton) {
      letterChecker(val: "X")
         ButtonChanger(val: guessCorrect, button: sender)
    }
    
    @IBAction func Y(_ sender:  UIButton) {
       letterChecker(val: "Y")
         ButtonChanger(val: guessCorrect, button: sender)
    }
    
    @IBAction func Z(_ sender:  UIButton) {
       letterChecker(val: "Z")
         ButtonChanger(val: guessCorrect, button: sender)
    }
 
    @IBAction func Continue(_ sender: Any) {
        newWord()
        
        Continue.isHidden = true
    }
}

