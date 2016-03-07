//
//  FeedViewController.swift
//  facebook
//
//  Created by Jason Putorti on 2/8/16.
//  Copyright © 2016 Jason Putorti. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var FeedScroller: UIScrollView!
    @IBOutlet weak var FeedImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FeedScroller.delegate = self
        FeedScroller.contentSize = FeedImage.image!.size

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapPhoto(sender: AnyObject) {
        performSegueWithIdentifier("zoomPhotoSegue", sender: self)
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
