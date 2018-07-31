//
//  PollingTabBarViewController.swift
//  Poll
//
//  Created by Spencer Curtis on 7/22/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        passVoteControllerToChildViewControllers()
    }
    
    private func passVoteControllerToChildViewControllers() {
        guard let viewControllers = viewControllers else { return }
        
        for viewController in viewControllers {
            guard let voteControllerVC = viewController as? VoteControllerProtocol else { continue }
            
            voteControllerVC.voteController = voteController
        }
    }
    
    let voteController = VoteController()
}
