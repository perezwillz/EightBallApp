//
//  VoteController.swift
//  Poll
//
//  Created by Spencer Curtis on 7/22/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class VoteController {
    
    func createVote(with name: String, response: String) {
        let vote = Vote(name: name, response: response)
        
        votes.append(vote)
    }
    
    var votes: [Vote] = []
}
