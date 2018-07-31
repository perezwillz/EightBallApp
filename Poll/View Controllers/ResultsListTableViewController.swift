//
//  ResultsListTableViewController.swift
//  Poll
//
//  Created by Spencer Curtis on 7/22/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class ResultsListTableViewController: UITableViewController, VoteControllerProtocol {
    var voteController: VoteController!
    
   
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return voteController.votes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VoteCell", for: indexPath)

        let vote = voteController.votes[indexPath.row]
        
        cell.textLabel?.text = vote.name
        cell.detailTextLabel?.text = vote.response

        return cell
    }

   
}
