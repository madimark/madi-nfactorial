//
//  main.swift
//  DwayneJohnsonPaperScissors
//
//  Created by Madi Muratuly on 27.02.2024.
//

import Foundation

print("Choose Rock, Paper or Scissors 🪨📄✂️")

enum Choice: String {
    case rock
    case paper
    case scissors
}

func makeTheChoice() -> String {
    print("What do you choose? Rock, Paper or Scissors")
    if let playerOne = readLine() {
        switch playerOne {
        case "rock":
            print("You chose Rock!")
            return playerOne
        case "paper":
            print("You chose Paper!")
            return playerOne
        case "scissors":
            print("You chose Scissors!")
            return playerOne
        default:
            print ("Wrong input. Try again")
            return makeTheChoice()
        }
    }
    else { print("Huh? Wrong input. Try again!")
        return makeTheChoice()
    }
}
var playerOne: String = makeTheChoice()

let botGuess = ["Rock", "Paper", "Scissors"]
var bot = botGuess.randomElement()
print("Bot chose " + bot!) //bot!) must not use "!" - HOW????

if playerOne == "rock" && bot == "Rock" || playerOne == "paper" && bot == "Paper" || playerOne == "scissors" && bot == "Scissors" {
    print("Round Draw")
} else if playerOne == "paper" && bot == "Rock" || playerOne == "rock" && bot == "Scissors" || playerOne == "scissors" && bot == "Paper" {
    print("Human Won")
} else if bot == "paper" && playerOne == "Rock" || bot == "rock" && playerOne == "Scissors" || bot == "scissors" && playerOne == "Paper"{
        print("Bot Won")
}

func endGame() -> String {
    print("Try again? (yes/no)")
    if let final = readLine() {
        switch final {
        case "yes":
            return makeTheChoice()
        case "no":
            print("Thank you for playing!")
        default:
            print("I don't understand")
            return endGame()
        }
    }
    return ""
}
var result: String = endGame()

// BUG: when player tries again, bot doesnt generate response second time.
// I think i need to put line 42 inside the function (string maybe?) BUT HOW?
// i couldnt use safe unwrapping and instead used force unwrapping (!) line 44
// maybe i could use if let instead of var?
// how do i make it so it responds to small and big letters .lowercased






//if makeTheChoice() = "rock" && bot == "Rock" {
//    print("Draw")
//}

//if let randomCPU == Int.random(in: 1...3) {
//    switch randomCPU {
//    case 1:
//        print("Computer chose Rock")
//    case 2:
//        print("Computer chose Paper")
//    case 3:
//        print("Computer chose Scissors")
//    default:
//        print("unknown error")
//    }
//}

//if playerOne = "rock" && randomCPU = 2

//var equip = result

//result = input()

//var playerOne = equip {
    //if equip = "Rock"
//}
