//
//  PostTableViewCell.swift
//  RuneTrack
//
//  Created by Luna Perry on 10/15/21.
//

import UIKit
import Foundation

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var statIcon: UIImageView!
    @IBOutlet weak var skillName: UILabel!
    @IBOutlet weak var statLevel: UILabel!
    @IBOutlet weak var statXp: UILabel!
    @IBOutlet weak var statRank: UILabel!
    
    var post: Stats? {
        didSet {
            guard let post = post else { return }
            let i:Int = 1
            skillName.text = post.skillNames[i]
            statLevel.text = String(post.Attack["Level"]!)
            statXp.text = String(post.Attack["Experience"]!)
            statRank.text = String(post.Attack["Rank"]!)
            updateStatIcon()
        }
    }
    func updateStatIcon() {
       // make sure we return if post doesn't exist
       guard let post = post else { return }
       // assign the placeholder image to the UI element
       statIcon.image = UIImage(named: "Attack")
    }
}
