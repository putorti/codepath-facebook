//
//  ZoomPhotoViewController.swift
//  facebook
//
//  Created by Jason Putorti on 3/6/16.
//  Copyright © 2016 Jason Putorti. All rights reserved.
//

import UIKit

class ZoomPhotoViewController: UIViewController {
    
    var image: UIImage!
    @IBOutlet weak var zoomedImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zoomedImage.image = image!
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeModal(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
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
