//
//  Menu.swift
//  videoGameLibrary
//
//  Created by Aaron Fisher on 9/11/18.
//  Copyright © 2018 Aaron Fisher. All rights reserved.
//

import Foundation

class Menu {
    
    let gamelibrary = Library()
    
    var shouldQuit = false
    
    func printMenu() {
        print("1: Add Game\n2: Remove Game\n3: List avaliable Games\n4: Check in Game\n5: Check Out Game\n6: List Checked Out Games\n7: Quit\n8: Help")
    }
    
    
    func quit() { // This function will be callled when user is ready to quit
        shouldQuit = true // since the user is ready to quit we set the shouldQuit function to true to break it out of the while loop
        print("Thank you for using this Game Library!")
    }
    
        
    func go() {
        // this function is going to handle making the menu run. It willdisplay the menu ans take user input until the user wishes to quit the application
        while !shouldQuit {
            printMenu()
            getInput()
            quit()
        }
    }
        
    func getInput() {
        print("\nWhat would you like to do? (Enter a number 1-8)")
        var userInput = Int(readLine()!)
        while userInput == nil {
                print("That is not a valid answer")
                userInput = Int(readLine()!)
            }
        
        switch userInput {
        case 1:
            print("You have chosen to Add Game")
            gamelibrary.addGame()
            go()
        case 2:
            print("You have chosen to Remove Game")
            gamelibrary.removeGame()
            go()
        case 3:
            print("Listing avaliable Games")
            gamelibrary.listAvaibleGames()
            go()
        case 4:
            print("You have chosen to Check in a Game")
            gamelibrary.checkInGame()
            go()
        case 5:
            print("You have chosen to Check out a Game")
            gamelibrary.checkOutGame()
            go()
        case 6:
            print("Listing Unavaible Games")
            gamelibrary.listUnavaibleGames()
            go()
        case 7:
            print("Quitting...")
            quit()
        case 8:
            go()
        default:
            print("This is not a valid number, please choose a number between 1-8.")
            getInput()
        }
    }
}















