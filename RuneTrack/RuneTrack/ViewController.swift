//
//  ViewController.swift
//  RuneTrack
//
//  Created by Luna Perry on 10/11/21.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    var person: Person?
    
    @IBOutlet weak var statTableView: UITableView!
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBAction func buttonTapped(_ sender: Any) {
        updateTable()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        statTableView.dataSource = self
        statTableView.delegate = self
    }
    
    func updateTable() {
        // Call fetch person via keyboard input to pull API Data
        fetchPerson(from: usernameTextField.text!) { result in
            switch result {
            
            case let .success(person):
                self.person = person
                self.statTableView.reloadData()
                
            case let .failure(error):
                print(error)
            }
        }
    }
    
    func fetchPerson(from userInput: String, completion: @escaping (Result<Person, Error>) -> Void) {
        
        // let jsonString = "38379,2875,1857656003 15987,99,108935961 42130,99,104332304 24058,99,102291776 22484,99,172160749 41666,99,85601060 28989,99,25588785 20763,99,131883726 41672,99,22465402 80054,99,16538676 38543,99,18714956 46296,99,33189710 26682,99,45466805 56554,99,18392625 9867,99,104915376 116171,99,16496762 18606,120,110107822 26053,99,29889808 78890,99,18223996 16219,120,133055157 61943,111,46340173 86982,99,13941861 23586,99,42227006 37919,99,20739462 13894,99,104828863 68222,113,52707807 40039,99,21636003 15364,120,200000000 54884,113,56983372 -1,-1 -1,-1 25384,4115009 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 -1,-1 21867,109 -1,-1 -1,-1 86092,9955 14357,94 44262,13 36998,162 130663,12 47484,13"
        
        let urlSession = URLSession.shared

        
            // Sets the query for API to the user input from keyboard
            let query = usernameTextField.text!
            
            // Base url for API
            let baseURL = "https://secure.runescape.com/m=hiscore/index_lite.ws?player=\(query)"
            let fullURL = URL(string: baseURL)!
            
            var request = URLRequest(url: fullURL)
            
            request.httpMethod = "GET"
            
            let task = urlSession.dataTask(with: request) { data, response, error in
                // error check/handling
                if let error = error {
                   print(error.localizedDescription)
                   return
               }

               // make sure we get back data
                guard let data = data else {
                   return
               }
                
                guard let result = String(data: data, encoding: .utf8) else {
                       return
                   }
                // Call makeStats function, passing in CSV from API, and setting the decoded stats to stats
                let stats = self.makeStats(from: result)
                
                // Create person struct from data (Name and Array of Structs[Stats]
                let person = Person(username: userInput, stats: stats)
                DispatchQueue.main.async {
                    completion(.success(person))
                }
            
              }
            task.resume()
    
    }

    func makeStats(from string: String) -> [Stats] {
        
        // Variable that contains list of skills returned in order by API
        let skillNames = ["Overall", "Attack", "Defence", "Strength", "Constitution", "Ranged", "Prayer", "Magic", "Cooking", "Woodcutting", "Fletching", "Fishing", "Firemaking", "Crafting", "Smithing", "Mining", "Herblore", "Agility", "Thieving", "Slayer", "Farming", "Runecrafting", "Hunter", "Construction", "Summoning", "Dungeoneering", "Divination", "Invention", "Archaeology"]
        
        // Splits CSV down at new line to String(Rank, Level, Experience)
        var skillStringArray = string.split(separator: "\n")

        
        var results = [Stats]()

        for skillName in skillNames {
            // Check if Array is empty and break if true
            guard skillStringArray.isEmpty == false else { break }
            
            // Strip the String from skillStringArray at comma, returns Substring
            let values = skillStringArray.removeFirst().split(separator: ",")
            
            // Error Check that the substring holds at least 3 values
            guard values.count >= 3 else { break }
            
            // Creates a struct stat that holds title(skillName), rank(Substring[0]), level(Substring[1]), experience(Substring[2])
            let stat = Stats(title: skillName, rank: String(values[0]), level: String(values[1]), experience: String(values[2]))
            
            // Append the stat Struct to results (Array of Structs)
            results.append(stat)
        }

        return results

    }

}

extension ViewController: UITableViewDataSource {
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
extension ViewController: UITableViewDelegate {
  // Code to handle cell events goes here...
}

