//
//  main.swift
//  Swift Playground
//
//  Created by Kennion Gubler on 1/12/22.
//

import Foundation
import AVFoundation
public class GameFlow
{
    
}
print("Hello, World!")
let names = ["Brian", "Bailey", "George", "Henry"]
//This is a lovely example of iterating through a list in Swift
 for name in names where name != "George"{
   print(name)
 }
//This is our classic range for loop
for i in 1...10 {
    print(i)
}
// The stride keyword allows us to set an increment
for i in stride(from: 1, to: 10, by: 5) {
    print(i)
}

let dictionary = [1: "Hello",
2: "Goodbye", 3: "Test"]

// let x = 1;

// print(x);
var x = 1;
while x == 1
{
    print("Enter your name: ")
    let name = readLine()
    print("Your name is \(name!).");

    print("Your name is " + name! + "? (Y/N)")
    let value = readLine()
    if (value == "Y")
    {
        x += 1;
        print("Very well! Good to meet you " + name!)
    }
    else
    {
        
    }
}
var check = 1
func getInput(scenario: String) -> String
{
    print(scenario)
    let userInput = readLine()
    return userInput!
}
while check == 1
{
    print("It has been a long winter day. You are freezing and you need to find warmth.")
    print("You are only able to carry one item with you. 1: A gun and 10 bullets, 2:matches, 3: a knife, 4: some rope, 5: a tent, or 6: a canteen")
    print("Which do you choose? (1, 2, 3, 4, 5, 6)")
    let item = readLine()
    print("You chose " + item! + " is that correct? (Y/N)")
    let value = readLine()
    let itemDict = [        1: "the gun and 10 bullets",
                            2: "the matches",
                            3: "the knife",
                            4: "the rope",
                            5: "the tent",
                            6: "the canteen"]
    if (value == "Y")
    {
        check += 1;
        let number = Int(item!)
        let itemString = itemDict[number!]
        print("Very well! You chose " + itemString! + ".")
    }
    else
    {
        
    }
}
var count = 0.0
let needs = [1: "Water", 2: "Food", 3: "Shelter"
]
func checkActicity(activity: String) -> String
{
    var chance = Int.random(in: 1..<8)
    var response = ""
    if(activity == "1")
    {
        if(chance == 5)
        {
            response = "You go hunting and get a rabbit"
            count += 2
        }
        else
        {
            response = "You go hunting but don't find anything."
        }
    }
    
    else if(activity == "2")
    {
        var needsNumber = Int.random(in: 1..<3)
        var need = needs[needsNumber]
        if(chance == 5 || chance == 3)
        {
            count += 1
            response = "You go searching around to find " + need! + " and are successful!"
        }
        else
        {
            response = "You go searching around to find " + need! + " and are unsuccessful"
        }
    }
    else if(activity == "3")
    {
        var needsNumber = Int.random(in: 1..<3)
        var need = needs[needsNumber]
        if(chance < 5)
        {
            count += 0.5
            response = "You are able to rest and get energy."
        }
        else
        {
            response = "You are freezing and are unable to rest"
        }
    }
    return response
}
//var song: AVAudioPlayer
//let path = Bundle.main.path(forResource: "cool", ofType: "mp3")
//let url = URL(fileURLWithPath: path!)
//
//do10 {
//    song = try AVAudioPlayer(contentsOf: url)
//    song.play()
//} catch {
//
//}
var isDead = false
var chanceOfSurvival = 0.0
var day = 1
while isDead == false
{
    count = 0
    for _ in 1...20
    {
        let activity = getInput(scenario: "1: Hunt, 2: Search, or 3: Rest? ")
        print(checkActicity(activity: activity))
    }
    chanceOfSurvival += Double.random(in: 1..<8)
    if(count > chanceOfSurvival)
    {
        print("You survived day " + String(day))
        day += 1
    }
    else
    {
        print("You died")
        isDead = true
    }
}
print(chanceOfSurvival)
print (count)
