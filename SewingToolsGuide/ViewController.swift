//
//  ViewController.swift
//  SewingToolsGuide
//
//  Created by Lauren Banawa on 3/31/20.
//  Copyright © 2020 Lauren Banawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var myTools = [Tool]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //Tool Objects
        let tailorsHam = Tool(toolName: "Tailor's Ham", toolJob: "Iron curved surfaces", toolImage: UIImage(named: "tailorsham.jpg")!)
        let rulers = Tool(toolName: "Rulers", toolJob: "Measure and draw lines on flat surfaces", toolImage: UIImage(named: "rulers.jpg")!)
        let seamRipper = Tool(toolName: "Seam Ripper", toolJob: "Remove stitching", toolImage: UIImage(named: "seamripper.jpg")!)
        let measuringTape = Tool(toolName: "Measuring Tape", toolJob: "Measure flat and 3D objects", toolImage: UIImage(named: "measuringtape.jpg")!)
        let patternWeights = Tool(toolName: "Pattern Weights", toolJob: "Hold fabric and/or pattern paper flat", toolImage: UIImage(named: "patternweights.jpg")!)
        
        myTools.append(tailorsHam)
        myTools.append(rulers)
        myTools.append(seamRipper)
        myTools.append(measuringTape)
        myTools.append(patternWeights)
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myTools.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = myTools[indexPath.row].name
        return cell
    }


}

