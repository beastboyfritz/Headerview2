//
//  ViewController.swift
//  Headerview2
//
//  Created by HGPMAC58 on 6/28/17.
//  Copyright © 2017 HGPMAC58. All rights reserved.
//

import UIKit

struct postStruct {
    var image : UIImage!
    var name : String!
}

var heightOfHeader : CGFloat  = 44

class TableViewController: UITableViewController {

    var arrayOfPost = [postStruct]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        arrayOfPost = [postStruct.init(image: #imageLiteral(resourceName: "dreamville"), name: "Frizz" ),postStruct.init(image: #imageLiteral(resourceName: "dreamville"), name: "Frizz" ),postStruct.init(image: #imageLiteral(resourceName: "dreamville"), name: "Frizz" ),postStruct.init(image: #imageLiteral(resourceName: "dreamville"), name: "Frizz" ),postStruct.init(image: #imageLiteral(resourceName: "dreamville"), name: "Frizz" )  ]
        
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return arrayOfPost.count
    }


    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return heightOfHeader
    }

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("Headerview", owner: self, options: nil)?.first as! Headerview
        
        
        headerView.headerImageView.image = arrayOfPost[1].image
        headerView.headerLabel.text = arrayOfPost[1].name
        
        return headerView 

    }
    
}
