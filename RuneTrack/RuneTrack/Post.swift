//
//  Post.swift
//  RuneTrack
//
//  Created by Luna Perry on 10/15/21.
//

import Foundation
import UIKit



//func fetchPerson(from userInput: String, completion: @escaping (Result<Person, Error>) -> Void) {
//    // make reqeust to API
//
//    // send request
//
//    // decode data from API
//    let userInput = "Luna_Yuhi"
//    let jsonString = "38379,2875,1857656003 15987,99,108935961 42130,99,104332304 24058,99,102291776 22484,99,172160749 41666,99,85601060 28989,99,25588785 20763,99,131883726 41672,99,22465402 80054,99,16538676 38543,99,18714956 46296,99,33189710 26682,99,45466805 56554,99,18392625 9867,99,104915376 116171,99,16496762 18606,120,110107822 26053,99,29889808 78890,99,18223996 16219,120,133055157 61943,111,46340173 86982,99,13941861 23586,99,42227006 37919,99,20739462 13894,99,104828863 68222,113,52707807 40039,99,21636003 15364,120,200000000 54884,113,56983372 -1,-1 -1,-1 25384,4115009 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 21867,109 -1,-1 -1,-1 86092,9955 14357,94 44262,13 36998,162 130663,12 47484,13" // overall and attack from API
//    let stats = makeStats(from: jsonString)
//    let person = Person(username: userInput, stats: stats)
//
//    completion(.success(person))
//}
//
//func makeStats(from string: String) -> [Stats] {
//    let skillNames = ["Overall", "Attack", "Defence", "Strength", "Constitution", "Ranged", "Prayer", "Magic", "Cooking", "Woodcutting", "Fletching", "Fishing", "Firemaking", "Crafting", "Smithing", "Mining", "Herblore", "Agility", "Thieving", "Slayer", "Farming", "Runecrafting", "Hunter", "Construction", "Summoning", "Dungeoneering", "Divination", "Invention", "Archaeology"]
//    var jsonArray = string.split(separator: ",")
//
//    var results = [Stats]()
//
//    for skillName in skillNames {
//        guard jsonArray.count >= 3 else { break }
//
//        let values = Array(jsonArray.dropFirst(3))
//        let stat = Stats(title: skillName, rank: values[0], level: values[1], experience: values[2])
//        results.append(stat)
//    }
//
//    return results
//
//}

struct Person {
    let username: String
    let stats: [Stats]
}

struct Stats {
    let title: String // e.g. "Overall", "Attack", "Defence", ...
    let rank: String
    let level: String
    let experience: String
}
//
//struct PersonStats {
//    let
//}

class PersonVC: UIViewController {
//    var person: Person?


//    @IBOutlet weak var rankLabel: UILabel!
//    @IBOutlet weak var statTableView: UITableView!

    // type name
    // make API fetch
    // if name is found, decode api into Person, update UI with Person
    // - person name
    // - stats

//    func updateUI() {
//        guard let person = person else { return }
//
////        let stats = person.stats
////        let statsIsOverall: (Stats) -> Bool = { stat in
////            return stat.title == "Overall"
////        }
////
////        if let overallStat = stats.first(where: statsIsOverall) {
////            rankLabel.text = "Rank: \(overallStat.rank)" // Rank: 17
////        }
//
//        statTableView.reloadData()
//    }

//    /// Determines how many cells will be shown on the table view.
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return person?.stats.count ?? 0
//    }
//
//    /// Creates and configures each cell.
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "statCell", for: indexPath) as! PostTableViewCell
//
//        let stat = person!.stats[indexPath.row]
//        cell.post = stat
//
//        return cell
//   }
}

//

//struct Stats2 {
//    let skillNames = ["Overall", "Attack", "Defence", "Strength", "Constitution", "Ranged", "Prayer", "Magic", "Cooking", "Woodcutting", "Fletching", "Fishing", "Firemaking", "Crafting", "Smithing", "Mining", "Herblore", "Agility", "Thieving", "Slayer", "Farming", "Runecrafting", "Hunter", "Construction", "Summoning", "Dungeoneering", "Divination", "Invention", "Archaeology"]
//
//   var Overall = ["Rank": 0,
//                   "Level": 0,
//                   "Experience": 0]
//    var Attack = ["Rank": 0,
//                  "Level": 0,
//                  "Experience": 0]
//    var Defence = ["Rank": 0,
//                   "Level": 0,
//                   "Experience": 0]
//    var Strength = ["Rank": 0,
//                    "Level": 0,
//                    "Experience": 0]
//    var Constitution = ["Rank": 0,
//                        "Level": 0,
//                        "Experience": 0]
//    var Ranged = ["Rank": 0,
//                  "Level": 0,
//                  "Experience": 0]
//    var Prayer = ["Rank": 0,
//                  "Level": 0,
//                  "Experience": 0]
//    var Magic = ["Rank": 0,
//                 "Level": 0,
//                 "Experience": 0]
//    var Cooking = ["Rank": 0,
//                   "Level": 0,
//                   "Experience": 0]
//    var Woodcutting = ["Rank": 0,
//                       "Level": 0,
//                       "Experience": 0]
//    var Fletching = ["Rank": 0,
//                     "Level": 0,
//                     "Experience": 0]
//    var Fishing = ["Rank": 0,
//                   "Level": 0,
//                   "Experience": 0]
//    var Firemaking = ["Rank": 0,
//                      "Level": 0,
//                      "Experience": 0]
//    var Crafting = ["Rank": 0,
//                    "Level": 0,
//                    "Experience": 0]
//    var Smithing = ["Rank": 0,
//                    "Level": 0,
//                    "Experience": 0]
//    var Mining = ["Rank": 0,
//                  "Level": 0,
//                  "Experience": 0]
//    var Herblore = ["Rank": 0,
//                    "Level": 0,
//                    "Experience": 0]
//    var Agility = ["Rank": 0,
//                   "Level": 0,
//                   "Experience": 0]
//    var Thieving = ["Rank": 0,
//                    "Level": 0,
//                    "Experience": 0]
//    var Slayer = ["Rank": 0,
//                  "Level": 0,
//                  "Experience": 0]
//    var Farming = ["Rank": 0,
//                   "Level": 0,
//                   "Experience": 0]
//    var Runecrafting = ["Rank": 0,
//                        "Level": 0,
//                        "Experience": 0]
//    var Hunter = ["Rank": 0,
//                  "Level": 0,
//                  "Experience": 0]
//    var Construction = ["Rank": 0,
//                        "Level": 0,
//                        "Experience": 0]
//    var Summoning = ["Rank": 0,
//                     "Level": 0,
//                     "Experience": 0]
//    var Dungeoneering = ["Rank": 0,
//                         "Level": 0,
//                         "Experience": 0]
//    var Divination = ["Rank": 0,
//                      "Level": 0,
//                      "Experience": 0]
//    var Invention = ["Rank": 0,
//                     "Level": 0,
//                     "Experience": 0]
//    var Archaeology = ["Rank": 0,
//                       "Level": 0,
//                       "Experience": 0]
//}
