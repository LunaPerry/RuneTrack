//
//  Post.swift
//  RuneTrack
//
//  Created by Luna Perry on 10/15/21.
//

import Foundation
import UIKit



func fetchPerson(from userInput: String, completion: @escaping (Result<Person, Error>) -> Void) {
    // make reqeust to API

    // send request

    // decode data from API

    let jsonString = "120,1,1515,48,2,8484" // overall and attack from API
    let stats = makeStats(from: jsonString)
    let person = Person(username: userInput, stats: stats)

    completion(.success(person))
}

func makeStats(from string: String) -> [Stats] {
    let skillNames = ["Overall", "Attack", "Defence", "Strength", "Constitution", "Ranged", "Prayer", "Magic", "Cooking", "Woodcutting", "Fletching", "Fishing", "Firemaking", "Crafting", "Smithing", "Mining", "Herblore", "Agility", "Thieving", "Slayer", "Farming", "Runecrafting", "Hunter", "Construction", "Summoning", "Dungeoneering", "Divination", "Invention", "Archaeology"]
    var jsonArray = string.split(separator: ",")

    var results = [Stats]()

    for skillName in skillNames {
        guard jsonArray.count >= 3 else { break }

        let values = Array(jsonArray.dropFirst(3))
        let stat = Stats(title: skillName, rank: <#T##Int#>, level: <#T##Int#>, experience: <#T##Int#>)
        results.append(stat)
    }

    return results

}

struct Person {
    let username: String
    let stats: [Stats]
}

struct Stats {
    let title: String // e.g. "Overall", "Attack", "Defence", ...
    let rank: Int
    let level: Int
    let experience: Int
}
//
//struct PersonStats {
//    let
//}

class PersonVC: UIViewController {
    var person: Person?


    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var statTableView: UITableView!

    // type name
    // make API fetch
    // if name is found, decode api into Person, update UI with Person
    // - person name
    // - stats

    func updateUI() {
        guard let person = person else { return }

        let stats = person.stats
        let statsIsOverall: (Stats) -> Bool = { stat in
            return stat.title == "Overall"
        }

        if let overallStat = stats.first(where: statsIsOverall) {
            rankLabel.text = "Rank: \(overallStat.rank)" // Rank: 17
        }

        statTableView.reloadData()
    }

    /// Determines how many cells will be shown on the table view.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person?.stats.count ?? 0
    }

    /// Creates and configures each cell.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "statCell", for: indexPath) as! PostTableViewCell

        let stat = person!.stats[indexPath.row]
        cell.post = stat

        return cell
   }
}

//

struct Stats2 {
    let skillNames = ["Overall", "Attack", "Defence", "Strength", "Constitution", "Ranged", "Prayer", "Magic", "Cooking", "Woodcutting", "Fletching", "Fishing", "Firemaking", "Crafting", "Smithing", "Mining", "Herblore", "Agility", "Thieving", "Slayer", "Farming", "Runecrafting", "Hunter", "Construction", "Summoning", "Dungeoneering", "Divination", "Invention", "Archaeology"]

   var Overall = ["Rank": 0,
                   "Level": 0,
                   "Experience": 0]
    var Attack = ["Rank": 0,
                  "Level": 0,
                  "Experience": 0]
    var Defence = ["Rank": 0,
                   "Level": 0,
                   "Experience": 0]
    var Strength = ["Rank": 0,
                    "Level": 0,
                    "Experience": 0]
    var Constitution = ["Rank": 0,
                        "Level": 0,
                        "Experience": 0]
    var Ranged = ["Rank": 0,
                  "Level": 0,
                  "Experience": 0]
    var Prayer = ["Rank": 0,
                  "Level": 0,
                  "Experience": 0]
    var Magic = ["Rank": 0,
                 "Level": 0,
                 "Experience": 0]
    var Cooking = ["Rank": 0,
                   "Level": 0,
                   "Experience": 0]
    var Woodcutting = ["Rank": 0,
                       "Level": 0,
                       "Experience": 0]
    var Fletching = ["Rank": 0,
                     "Level": 0,
                     "Experience": 0]
    var Fishing = ["Rank": 0,
                   "Level": 0,
                   "Experience": 0]
    var Firemaking = ["Rank": 0,
                      "Level": 0,
                      "Experience": 0]
    var Crafting = ["Rank": 0,
                    "Level": 0,
                    "Experience": 0]
    var Smithing = ["Rank": 0,
                    "Level": 0,
                    "Experience": 0]
    var Mining = ["Rank": 0,
                  "Level": 0,
                  "Experience": 0]
    var Herblore = ["Rank": 0,
                    "Level": 0,
                    "Experience": 0]
    var Agility = ["Rank": 0,
                   "Level": 0,
                   "Experience": 0]
    var Thieving = ["Rank": 0,
                    "Level": 0,
                    "Experience": 0]
    var Slayer = ["Rank": 0,
                  "Level": 0,
                  "Experience": 0]
    var Farming = ["Rank": 0,
                   "Level": 0,
                   "Experience": 0]
    var Runecrafting = ["Rank": 0,
                        "Level": 0,
                        "Experience": 0]
    var Hunter = ["Rank": 0,
                  "Level": 0,
                  "Experience": 0]
    var Construction = ["Rank": 0,
                        "Level": 0,
                        "Experience": 0]
    var Summoning = ["Rank": 0,
                     "Level": 0,
                     "Experience": 0]
    var Dungeoneering = ["Rank": 0,
                         "Level": 0,
                         "Experience": 0]
    var Divination = ["Rank": 0,
                      "Level": 0,
                      "Experience": 0]
    var Invention = ["Rank": 0,
                     "Level": 0,
                     "Experience": 0]
    var Archaeology = ["Rank": 0,
                       "Level": 0,
                       "Experience": 0]
}
