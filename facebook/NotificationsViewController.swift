//
//  NotificationsViewController.swift
//  facebook
//
//  Created by Jason Putorti on 2/8/16.
//  Copyright © 2016 Jason Putorti. All rights reserved.
//

import UIKit

class NotificationsViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var NotificationsScroller: UIScrollView!
    @IBOutlet weak var NotificationsImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationsScroller.delegate = self
        NotificationsScroller.contentSize = NotificationsImage.image!.size
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
