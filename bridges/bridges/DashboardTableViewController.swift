//
//  DashboardTableViewController.swift
//  bridges
//
//  Created by Lilly Chou on 5/1/16.
//  Copyright © 2016 Lilly Chou. All rights reserved.
//

import UIKit
var currentUser: User!

class DashboardTableViewController: UITableViewController {

    var detailViewController: DetailViewController? = nil
    var mentorshipsArray = [Mentorship]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Load Mentorships from plist into Array
        let path = NSBundle.mainBundle().pathForResource("Mentorships", ofType: "plist")
        let dictArray = NSArray(contentsOfFile: path!)
        currentUser = User (name: "Default User", contact: "123-456-7890", liked: ["Let's Rise"], communities: ["High School"])
        
        for mentorshipItem in dictArray! {
            let newMentorship : Mentorship = Mentorship(name:(mentorshipItem.objectForKey("name")) as! String, location: (mentorshipItem.objectForKey("location")) as! String, description: (mentorshipItem.objectForKey("description")) as! String, website: (mentorshipItem.objectForKey("website")) as! String, type: (mentorshipItem.objectForKey("type")) as! String, communities: (mentorshipItem.objectForKey("communities")) as! [String])
            mentorshipsArray.append(newMentorship)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return mentorshipsArray.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MentorshipCell") as! MentorshipCell
        
        let mentorship = mentorshipsArray[indexPath.row]
        cell.orgName.text = mentorship.name
        cell.orgLocation.text = mentorship.location
        var comm = mentorship.communities[0]
        var index = 1
        while index < mentorship.communities.count{
            comm += (", " + mentorship.communities[index])
            index += 1
        }

        cell.orgCommunities.text = comm
        if currentUser.liked.contains(mentorship.name){
            cell.orgLike.selected = true
        } else{
            cell.orgLike.selected = false
        }
        return cell
    }
    
    // MARK: - Segues
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let mentorshipDetail : Mentorship = mentorshipsArray[indexPath.row]
                let controller = segue.destinationViewController as! DetailViewController
//                let controller = (segue.destinationViewController as! UINavigationController).topViewController as! DetailViewController
                controller.mentorshipDetail = mentorshipDetail
//                controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
//                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
