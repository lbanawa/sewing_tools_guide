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
    var chosenTool : Tool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        // Tool Objects
        let tailorsHam = Tool(toolName: "Tailor's Ham", toolJob: "Iron curved surfaces", toolImage: UIImage(named: "tailorsham.jpg")!)
        let rulers = Tool(toolName: "Rulers", toolJob: "Measure and draw lines on flat surfaces", toolImage: UIImage(named: "rulers.jpg")!)
        let seamRipper = Tool(toolName: "Seam Ripper", toolJob: "Remove stitching", toolImage: UIImage(named: "seamripper.jpg")!)
        let measuringTape = Tool(toolName: "Measuring Tape", toolJob: "Measure flat and 3D objects", toolImage: UIImage(named: "measuringtape.jpg")!)
        let patternWeights = Tool(toolName: "Pattern Weights", toolJob: "Hold fabric and/or pattern paper flat", toolImage: UIImage(named: "patternweights.jpg")!)
        
        // add tools to myTools array
        myTools.append(tailorsHam)
        myTools.append(rulers)
        myTools.append(seamRipper)
        myTools.append(measuringTape)
        myTools.append(patternWeights)
        
        navigationItem.title = "Sewing Tools Guide" // navigation bar/ title
        
        
    }
    
    // number of rows = number of items in array
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myTools.count
    }
    
    // correspond the index value of each row to the index values of the array and use the name data to specify the text in each row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = myTools[indexPath.row].name
        return cell
    }
    
    // when selecting a row, perform a segue to the correct tool
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenTool = myTools[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedTool = chosenTool
            
        }
    }


}

