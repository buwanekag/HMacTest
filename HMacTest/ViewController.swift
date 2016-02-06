//
//  ViewController.swift
//  HMacTest
//
//  Created by Buwaneka Galpoththawela on 11/24/15.
//  Copyright © 2015 Buwaneka Galpoththawela. All rights reserved.
//

import UIKit
import HMACSigner

class ViewController: UIViewController {
    
//    
//    var requestsArray = [Requests]()
//
//
//    func parseRequestsData(data:NSData){
//        
//        
//        do {
//            let jsonResult = try NSJSONSerialization.JSONObjectWithData(data, options: .MutableContainers)
//            
//            let tempDictArray = jsonResult.objectForKey("supplies") as! [NSDictionary]
//            
//            
//            for ticketDict in tempDictArray {
//                let newTicket = Requests()
//                
//                
//                
//                newTicket.name = ticketDict.objectForKey("name") as! String
//                
//                newTicket.id = ticketDict.objectForKey("id") as! Int
//                
//                
//                self.requestsArray.append(newTicket)
//                
//                print("TicketName:\(newTicket.name)")
//            }
//            
//            dispatch_async(dispatch_get_main_queue())  {
//                
//                NSNotificationCenter.defaultCenter().postNotification(NSNotification(name: "receivedDataFromServer", object: nil))
//            }
//        } catch {
//            print("JSON Parsing Error")
//        }
//        
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
//        let url = NSURL(string: "https://5c80ec1b.ngrok.io/api/v1/requests")
//        let request = NSMutableURLRequest(URL: url!)
//        request.HTTPMethod = "POST"
//        
//        request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
//        
//         request.HTTPBody = "messgage=test&supply_ids[]=1&supply_ids[]=2".dataUsingEncoding(NSUTF8StringEncoding)
//        
//        // request.setValue("application/text", forKey: "supplies")
//        
//        
//        request.signWithAccessIdentifier("2376", andSecret: "HLHSDDp+95IqeCuAjCslZRqRcPdnRXFd55W904lamDMQh9pa+UIrNRz+hiPpg5u7FKKPF5GjQPEPSWYbzbGbpw==")
//        
//        let urlSession = NSURLSession.sharedSession()
//        
//        let task = urlSession.dataTaskWithRequest(request) { (data, response, error) -> Void in
//            
//            if data != nil {
//                
//                print("Data\(data)")
//                
//                
//                
//                //self.parseRequestsData(data!)
//                
//            } else {
//                print("No Data")
//            }
//        }
//        task.resume()
//
        
        
    //test
    }
    
    override func viewWillAppear(animated: Bool) {
        self.performSegueWithIdentifier("loginPage", sender: self)
    }

    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

