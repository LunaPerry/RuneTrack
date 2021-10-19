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
            
            // Set cell data
            guard let post = post else { return }
            skillName.text = post.title
            statLevel.text = String(post.level)
            statXp.text = String(post.experience)
            statRank.text = String(post.rank)
            updateStatIcon()
        }
    }
    func updateStatIcon() {
       // make sure we return if post doesn't exist
       guard let post = post else { return }
       // assign the placeholder image to the UI element
        statIcon.image = UIImage(named: post.title)
    }
}
