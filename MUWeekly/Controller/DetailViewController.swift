//
//  DetailViewController.swift
//  MUWeekly
//
//  Created by Дмитрий on 10/15/14.
//  Copyright (c) 2014 Mariia Famke. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    var lectures: (id: Int, name: String, description: String) = (id:0, name:"", description: "")
    
    @IBOutlet weak var DetailTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DetailTextView.text = lectures.description

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
