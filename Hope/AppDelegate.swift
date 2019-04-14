//
//  AppDelegate.swift
//  Hope
//
//  Created by David Henshaw on 4/13/19.
//  Copyright © 2019 David Henshaw. All rights reserved.
//

import UIKit
import Firebase
import WebKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    public let client = MSClient(applicationURLString: "https://hopenudge.azurewebsites.net")
    //let test = MSSyncContext(delegate: <#T##MSSyncContextDelegate?#>, dataSource: <#T##MSSyncContextDataSource?#>, callback: <#T##OperationQueue?#>)

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
        
        
        if Auth.auth().currentUser == nil {
            // Get Reference to Storyboard
            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            
            // Get Reference to AuthVC and Present it
            let authVC = storyboard.instantiateViewController(withIdentifier: "AuthVC")
            window?.makeKeyAndVisible()
            window?.rootViewController?.present(authVC, animated: true, completion: nil)
        }
        
        // Azure Setup
        
        
        
        
        //client.syncContext = MSSyncContext(delegate: nil, dataSource: nil, callback: nil)
        
        
        
        
        
        
        //let delegate = UIApplication.sharedApplication().delegate as AppDelegate
        //let client = delegate.client!
        //let item = ["text":"Awesome item"]
        //let answerTable = client.table(withName: "test11")
        let answerTable = client.table(withName: "users")
        
        //answerTable.read(completion: {(result, error ) in
          //  if let err = error {
           //     print("Error ", err)
         //   } else if let answers = result?.items {
          //      for answer in answers {
          //          print("Answer: ", answer["ID"] as Any)
          //      }
       //     }
     //   })
        
        
        
        
        //itemTable.insert(item) {
            //(insertedItem, error) in
            //if error {
             //   println("Error" + error.description);
            //} else {
            //    println("Item inserted, id: " + insertedItem["id"])
            //}
       // }
        
        
        return true
    }


    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

