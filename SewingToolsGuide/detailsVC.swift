//
//  detailsVC.swift
//  SewingToolsGuide
//
//  Created by Lauren Banawa on 3/31/20.
//  Copyright © 2020 Lauren Banawa. All rights reserved.
//

import UIKit

class detailsVC: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedTool : Tool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // show the specified name, job and image that corresponds with the tool chosen
        nameLabel.text = selectedTool?.name
        jobLabel.text = selectedTool?.job
        imageView.image = selectedTool?.image

        // Do any additional setup after loading the view.
    }
    


}
