//
//  DetailsViewViewController.swift
//  bridges
//
//  Created by Lilly Chou on 5/1/16.
//  Copyright © 2016 Lilly Chou. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var orgLike: UIImageView!

    @IBOutlet weak var orgName: UILabel!
    @IBOutlet weak var orgDescription: UILabel!
    @IBOutlet weak var orgLocation: UILabel!
    @IBOutlet weak var orgWeb: UILabel!
    @IBOutlet weak var orgCommunities: UILabel!
    @IBOutlet weak var orgType: UILabel!
    
    var mentorshipDetail: Mentorship? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.mentorshipDetail {
            if let label = self.orgName {
                label.text = detail.name
                orgName.text = detail.name
                orgDescription.text = detail.description
                orgLocation.text = detail.location
                orgWeb.text = detail.website
                var comm = detail.communities[0]
                var index = 1
                while index < detail.communities.count{
                    comm += (", " + detail.communities[index])
                    index += 1
                }
                
                orgCommunities.text = comm
                orgType.text = detail.type
//                if currentUser.liked.contains(orgName.text!){
//                    orgLike.image = UIImage(named: "liked")
//                } else{
//                    orgLike.image = UIImage(named: "unliked")
//
//                }
                
                
            }
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
