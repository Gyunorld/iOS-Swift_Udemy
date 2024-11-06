import UIKit

let defaults = UserDefaults.standard

defaults.setValue(0.24, forKey: "Volume")
defaults.setValue(true, forKey: "MusicOn")
defaults.setValue("Diaz", forKey: "PlayerName")
defaults.setValue(Date(), forKey: "AppLastOpenedByUser")
let array = [1,2,3]
defaults.setValue(array, forKey: "myArray")
let dictionary = ["name" : "Jones"]
defaults.set(dictionary, forKey: "myDictionary")



let volume = defaults.float(forKey: "Volume")
let appLastOpen = defaults.object(forKey: "ApppLastOpenedByUser")
let myArray = defaults.array(forKey: "myArray") as! [Int]
let myDictionary = defaults.dictionary(forKey: "myDictionary")
