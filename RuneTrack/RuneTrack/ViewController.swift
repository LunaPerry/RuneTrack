//
//  ViewController.swift
//  RuneTrack
//
//  Created by Luna Perry on 10/11/21.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var statTableView: UITableView!
    var LunaYuhi = Stats(Overall: ["Experience" : 2000,
                                   "Rank": 1,
                                   "Level": 20],
                         Attack: ["Experience" : 2000,
                                  "Rank": 1,
                                  "Level": 20])
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        statTableView.dataSource = self
        statTableView.delegate = self
    }

}

extension ViewController: UITableViewDataSource {
   /// Determines how many cells will be shown on the table view.
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 29
   }

   /// Creates and configures each cell.
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "statCell", for: indexPath) as! PostTableViewCell
       
       let post = LunaYuhi
       cell.post = post
       
          return cell
  }
}
extension ViewController: UITableViewDelegate {
  // Code to handle cell events goes here...
}
