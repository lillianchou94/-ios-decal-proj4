//
//  TableViewCell.swift
//  bridges
//
//  Created by Lilly Chou on 5/1/16.
//  Copyright © 2016 Lilly Chou. All rights reserved.
//

import UIKit

class MentorshipCell: UITableViewCell {
    @IBOutlet weak var orgName: UILabel!
    @IBOutlet weak var orgLocation: UILabel!
    @IBOutlet weak var orgCommunities: UILabel!
    @IBOutlet weak var orgLike: UIButton!
    
    var user: User!
    
    @IBAction func likeTapped(sender: UIButton) {
        currentUser.likeTapped(orgName.text!)
        sender.selected = !sender.selected

    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let liked = UIImage(named: "liked.png")
        let unliked = UIImage(named: "unliked.png")
        
        orgLike.setImage(liked, forState: .Selected)
        orgLike.setImage(unliked, forState: .Normal)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        
    }

}
