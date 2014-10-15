//
//  ViewController.swift
//  MUWeekly
//
//  Created by Дмитрий on 10/13/14.
//  Copyright (c) 2014 Mariia Famke. All rights reserved.
//

import UIKit

class LecturesViewController: UITableViewController {
    
    var lectures = [(id: 1, name: "Основы", description: "Введение в синтаксис языка"), (id: 2, name: "Cocoa и Swift", description: "Паттерн MVC, первый проект на Cocoa"), (id: 3, name: "Архитектура", description: "Продолжение работы над проектом курса"), (id: 4, name: "Работа с сетью", description: "----"), (id: 5, name: "Objective C и Swift", description: "----"), (id: 6, name: "Дебаг, Тестирование и AppStore", description: "-----")]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // if user loggetIn != true {
        // показываем авторизацию
        
        let navAuthentication: UINavigationController = UIStoryboard(name: "Authentication", bundle: nil).instantiateInitialViewController() as UINavigationController
        
        navigationController?.presentViewController(navAuthentication, animated: true, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("cell") as? UITableViewCell
        
        if cell == nil {
            cell = UITableViewCell (style: UITableViewCellStyle.Value1, reuseIdentifier: "cell")
        }
        
        else {
            cell?.textLabel?.text = lectures[indexPath.row].name
        }
        
        return cell!
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lectures.count
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showDetail" {
            var indexPath = tableView.indexPathForSelectedRow()
            let destViewController: DetailViewController! = segue.destinationViewController as DetailViewController
            
            destViewController.lectures = lectures[indexPath!.row]
            destViewController.title = lectures[indexPath!.row].name

        }
        
    }

}

