//
//  ViewController.swift
//  rockPaperScissors
//
//  Created by Armanda Mendes on 23/05/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outcomeLabel: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        outcomeLabel.text = "Press a symbol to Play"
    }
   
    func generateRandomSign() -> String {
        // to randomly return 🪨, ✂️, 📄
        // generate a random number
        let randomNumber = Int.random(in: 0...3)
        // empty var to hold computer's sign
        var computerSign = ""
        
        //use if statement to set computer to change to one the emojis
        
        if randomNumber == 0 {
            computerSign = "📄"
        } else if randomNumber == 1 {
            computerSign = "🪨"
        } else {
            computerSign = "✂️"
        }
        return computerSign
        
    }

    @IBAction func playRock(_ sender: UIButton) {
        //call generateRandom function to get a sign for the iphone
        let iphoneSign = generateRandomSign()
        print("user selected 🪨, computer selected" + iphoneSign)
        
        if iphoneSign == "✂️" {
            outcomeLabel.text = "You Played 🪨\niPhone: " + iphoneSign + " \nYou won, computer Lost 🥳"
        } else if iphoneSign == "📄" {
            outcomeLabel.text = "You Played 🪨\niPhone: " + iphoneSign + " \nYou Lost, Computer won 😢"
            
                  } else {
                      outcomeLabel.text = "You Played 🪨\niPhone: " + iphoneSign + " \nIt's a 👔"
        }
        
    }
    
    @IBAction func playScissors(_ sender: UIButton) {
        let iphoneSign = generateRandomSign()
        print("user selected ✂️, computer selected" + iphoneSign)
        if iphoneSign == "✂️" {
            
            outcomeLabel.text = "You Played ✂️\niPhone: " + iphoneSign + " \nIt's a 👔"
        } else if iphoneSign == "📄" {
            outcomeLabel.text = "You Played ✂️\niPhone: " + iphoneSign + " \nYou won, Computer lost 🥳"
           
        } else {
            outcomeLabel.text = "You Played ✂️\niPhone: " + iphoneSign + " \nYou Lost, Computer Won 😢"
        }
        
    }
    
    @IBAction func playPaper(_ sender: UIButton) {
        let iphoneSign = generateRandomSign()
        print("user selected 📄, computer selected" + iphoneSign)
        
        if iphoneSign == "✂️" {
            outcomeLabel.text = "You Played 📄\niPhone: " + iphoneSign + " \nYou Lost, Computer Won 😢"
            
        } else if iphoneSign == "📄" {
            outcomeLabel.text = "You Played 📄\niPhone: " + iphoneSign + " \nIt's a 👔"
            
        } else {
            outcomeLabel.text = "You Played 📄\niPhone: " + iphoneSign + " \nYou won, Computer lost 🥳"
        }
        
    }
    
}

