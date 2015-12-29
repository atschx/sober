//
//  ViewController.swift
//  Sober
//
//  Created by Albert on 12/8/15.
//  Copyright © 2015 Albert. All rights reserved.
//

import UIKit
import SafariServices

import AdSupport

class ViewController: UIViewController {
    
    //@IBOutlet weak var appSoberName: UILabel!
    @IBOutlet weak var lblAdvertisingIdentifier: UILabel!
    
    // MARK
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
       // view.backgroundColor = UIColor.redColor()
        
        //step 1:初始化原始UI界面
        configDefaultUI()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK :configUI
    
    func configDefaultUI(){
        //appSoberName.text="AppSober!"
    }
    
    
    // MARK :functions
    
    //https://developer.apple.com/library/ios/documentation/AdSupport/Reference/ASIdentifierManager_Ref/#//apple_ref/occ/instp/ASIdentifierManager/advertisingIdentifier
    func getIDFA() -> String{
        
        let asIdentifierManager = ASIdentifierManager.init()
    
        var userIDFA = ""
        if asIdentifierManager.advertisingTrackingEnabled {
            userIDFA = asIdentifierManager.advertisingIdentifier.UUIDString
        }else{
            userIDFA="用户限制广告跟踪"
        }
        
        return userIDFA
    }
    
    //https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIDevice_Class/#//apple_ref/occ/instp/UIDevice/identifierForVendor
    // Identifier for Vendor
    func getIDFV() -> String {
        return UIDevice.currentDevice().identifierForVendor!.UUIDString
    }
    
    // MARK :Actions
    
    @IBAction func openUIWebView(sender: AnyObject) {
        //open remote url with UIWebView
        let webview = UIWebView(frame:self.view.bounds)
        webview.bounds=self.view.bounds
        webview.loadRequest(NSURLRequest(URL: NSURL(string:"http://atschx.com")!))
        self.view.addSubview(webview)
    }
    
    @IBAction func openInSafari(sender: AnyObject) {
        let url = NSURL(string: "http://atschx.com")
        UIApplication.sharedApplication().openURL(url!)
    }
   
    @available(iOS 9.0, *)
    @IBAction func openInSFSafariViewController(sender: AnyObject) {
        let url = NSURL(string: "http://atschx.com")
        let sfsvc = SFSafariViewController(URL:url!)
        self.presentViewController(sfsvc,animated:true,completion:nil)
    }

    @IBAction func showAdvertisingIdentifier(sender: AnyObject) {
        lblAdvertisingIdentifier.text="\(getIDFA())"
    }
}

