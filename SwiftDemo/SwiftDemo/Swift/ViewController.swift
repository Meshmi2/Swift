//
//  ViewController.swift
//  SwiftDemo
//
//  Created by Anselz on 14-6-3.
//  Copyright (c) 2014年 Anselz. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet var mainTableView : UITableView
    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Swift"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int{
        return 10
    }
    
    func tableView(tableView: UITableView!, heightForRowAtIndexPath indexPath: NSIndexPath!) -> Float{
        return 80
    }

    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!{
        let cellIndentifly = "SwiftTableViewCell"
        var cell : SwiftTableViewCell? = tableView.dequeueReusableCellWithIdentifier(cellIndentifly) as? SwiftTableViewCell
        if !cell {
            var cellViews = NSBundle.mainBundle().loadNibNamed("SwiftTableViewCell", owner: self, options: nil)
            cell = cellViews[0] as? SwiftTableViewCell
        }
        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        var objc = ObjcViewController(nibName:"ObjcViewController" ,bundle:NSBundle.mainBundle())
        self.navigationController.pushViewController(objc,animated:true)
    }
}
