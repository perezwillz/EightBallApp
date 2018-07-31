//
//  CombinedViewController.swift
//  Poll
//
//  Created by Spencer Curtis on 7/22/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol {
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segue.identifier {
            
        case "ResultsEmbed", "VotingEmbed":
            guard let destinationVC = segue.destination as? VoteControllerProtocol else { return }
            
            destinationVC.voteController = voteController

        default:
            break
        }
        
    }
    
    var voteController: VoteController!
}
