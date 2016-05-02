//
//  User.swift
//  bridges
//
//  Created by Lilly Chou on 5/1/16.
//  Copyright © 2016 Lilly Chou. All rights reserved.
//

import Foundation

class User {
    var name : String
    var contact : String
    var liked : [String]
    var communities : [String]
    
    /* Parses a NSDictionary and creates a photo object. */
    init (name: String, contact: String, liked: [String], communities: [String]) {
        self.name = name
        self.contact = contact
        self.liked = liked
        self.communities = communities
    }
    
    func likeTapped(org: String){
        if liked.contains(org){
            liked.removeAtIndex(liked.indexOf(org)!)
            print("deleted" + org)
        } else{
            liked.append(org)
            print("appended" + org)
        }
    }
    
}

