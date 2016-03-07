//
//  LoginViewController.swift
//  facebook
//
//  Created by Jason Putorti on 2/10/16.
//  Copyright © 2016 Jason Putorti. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var facebookImage: UIImageView!
    @IBOutlet weak var loginForm: UIView!
    @IBOutlet weak var loader: UIActivityIndicatorView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    var initialY: CGFloat!
    var offset: CGFloat!
    
    @IBAction func didTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func didPressLogin(sender: AnyObject) {
        
        // Start animating the activity indicator
        loader.startAnimating()
        
        // Set the Button state to "Selected"
        loginButton.selected = true
        
        if emailField.text == "Text we are looking for" && passwordField.text == "Other text we are looking for" {
            // Code that runs if both email and password match the text we are looking for in each case
        } else {
            // Code that runs if either the email or password do NOT match the text we are looking for in each case
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialY = loginForm.frame.origin.y
        offset = -50
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        loginForm.frame.origin.y = initialY + offset
        facebookImage.frame.origin.y = initialY + offset
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        loginForm.frame.origin.y = initialY
        facebookImage.frame.origin.y = initialY
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
