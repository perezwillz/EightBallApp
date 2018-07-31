//
//  VotingViewController.swift
//  Poll
//
//  Created by Spencer Curtis on 7/22/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        guard let name = nameTextField.text,
            let response = responseTextField.text else { return }
        
        voteController.createVote(with: name, response: response)
        
        nameTextField.text = ""
        responseTextField.text = ""
    }
    
    
    var voteController: VoteController!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var responseTextField: UITextField!
}
