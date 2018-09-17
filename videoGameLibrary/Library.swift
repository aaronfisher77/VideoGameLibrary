//
//  Library.swift
//  videoGameLibrary
//
//  Created by Aaron Fisher on 9/13/18.
//  Copyright © 2018 Aaron Fisher. All rights reserved.
//

import Foundation

class Library  {
    var gameArray = [Game(title: "SKYRIM"), Game(title: "Minecraft"), Game(title: "Witcher 3"), Game(title: "Fortnite")] // List of games inside the library
    
    func addGame() { // Adding a game
        print("Please enter the name of the game you would like to add?")
        var newGame = readLine()
        while newGame == nil { // Checks to see if the answer will work
            print("That is not a valid answer")
            newGame = readLine()
        }
        let theNewGame = Game(title: newGame!)
        gameArray.append(theNewGame)
    }
    
    
    
    func removeGame() {
        for index in 0..<gameArray.count{
            print("\(index) - \(gameArray[index].title)")
        }
        print("Please enter the number for the game you wish to remove:")
        
        var userInput = Int(readLine()!)
        let validGameIndex = Array(0..<gameArray.count)
        
        while userInput == nil || !validGameIndex.contains(userInput!){ // Checks to see if the answer will work
            print("Invalid response. Please enter a useable index")
            userInput = Int(readLine()!)
        }
        
        gameArray.remove(at: userInput!)
    }
    
    
    
    func listAvaibleGames() {
        for game in gameArray {
            if game.checkedIn {
                print(game.title)
            }
        }
    }
    
    
    
    func listUnavaibleGames() {
        for game in gameArray {
            if !game.checkedIn {
                print(game.title)
            }
        }
    }
    
    
    
    func checkInGame(dueDate: Date) {
        var counter = 1
        print("What game would you like to check in?")
        for game in gameArray {
            if !game.checkedIn {
                print("\(counter): \(game.title)")
                counter += 1
            }
            
        }
        print("Please enter the number corresponding with the game you would  like to check in!")
        var gameCheckedIn = Int(readLine()!)
        while gameCheckedIn == nil { // Checks to see if the answer will work
            print("That is not a valid answer")
            gameCheckedIn = Int(readLine()!) // Anwer needs to equal an integer
            
        }
        gameArray[gameCheckedIn!].checkedIn = true
        
        if gameArray[gameCheckedIn!].dueDate! < Date(){ // checks to see if return was before or after duedate
            print("Thanks for returning the game on time!")
        }else{
            print("You owe 10000000000000000$ because your game is late")
            
        }
        
    }
    
    
    
    func checkOutGame() {
        var counter = 1
        print("What game would you like to check out?")
        for game in gameArray {
            if game.checkedIn {
                print("\(counter): \(game.title)")
                counter += 1
            }
        }
        print("Please enter the number corresponding with the game you would  like to check out!")
        var gameCheckedOut = Int(readLine()!)
        while gameCheckedOut == nil { // Checks to see if the answer will work
            print("That is not a valid number")
            gameCheckedOut = Int(readLine()!) // Anwer needs to equal an integer
        }
        gameArray[gameCheckedOut!].checkedIn = false
        
        let currentCalender = Calendar.current // Creates a variable for the currecnt date at time of initialization
        let dueDate = currentCalender.date(byAdding: .day, value: 14, to: Date())
        gameArray[gameCheckedOut!].dueDate = dueDate
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy" // Formats the date in an easy way to understand
        print("Your game will need to be returned by \(dateFormatter.string(from: dueDate!))")
    }
 
    
    
    
    
    
    
    
}




