//
//  LoginViewController.swift
//  HMacTest
//
//  Created by Buwaneka Galpoththawela on 1/19/16.
//  Copyright © 2016 Buwaneka Galpoththawela. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    var baseUrlString = "medlink-staging.herokuapp.com"
    
    
    // MARK: - Interactive Method
    
    
    @IBAction func loginButtonPressed(sender: AnyObject) {
        let username = usernameTextField.text
        let password = passwordTextField.text
        
        if (username!.isEmpty || password!.isEmpty){
            
            let alertView = UIAlertController(title: "sign in failed", message: "please enter username and password", preferredStyle: .Alert)
            alertView.addAction(UIAlertAction(title: "ok", style: .Default, handler: nil))
            
        } else {
            let url = NSURL(string: "https://\(baseUrlString)/api/v1/auth")
            
            let request = NSMutableURLRequest(URL: url!,cachePolicy: .ReloadIgnoringLocalCacheData, timeoutInterval: 30.0)
            request.HTTPMethod = "POST"
            request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
            
            request.HTTPBody = "email=\(username)&password= \(password)".dataUsingEncoding(NSUTF8StringEncoding)
             request.signWithAccessIdentifier("2376", andSecret: "HLHSDDp+95IqeCuAjCslZRqRcPdnRXFd55W904lamDMQh9pa+UIrNRz+hiPpg5u7FKKPF5GjQPEPSWYbzbGbpw==")
            
            let urlSession = NSURLSession.sharedSession()
            
            let task = urlSession.dataTaskWithRequest(request) { (data, response, error) -> Void in
                
                if error != nil {
                    dispatch_async(dispatch_get_main_queue()){
                        let alert = UIAlertController (title: "Not Submited", message: "Request  not sent send text message", preferredStyle: .Alert)
                        
                        alert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: nil ))
                        //alert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: sen))
                        
                        
                        self.presentViewController(alert, animated: true, completion: nil)
                        
                        print("error=\(error)")
                        let responseIn = response
                        print("\(responseIn)")
                    }
        
                    
                    return
                    
                }
            
            }
            task.resume()
        }
    

    }
    
    
    // MARK: - Life Cycle Method

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
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
