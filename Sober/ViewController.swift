//
//  ViewController.swift
//  Sober
//
//  Created by Albert on 12/8/15.
//  Copyright © 2015 Albert. All rights reserved.
//

import UIKit
import SafariServices

//import AdSupport

class ViewController: UIViewController {
    
    @IBOutlet weak var appSoberName: UILabel!
    @IBOutlet weak var lblAdvertisingIdentifier: UILabel!
    
    // MARK
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
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
        appSoberName.text="AppSober!"
    }
    
    
    // MARK :functions
    func getAdertisingIdentifier() -> String{
        
        //var advertisingIdentifier : NSUUID!{ get }
        
        //let UUID = NSUUID.UUID().UUIDString
        
        let UUID = UIDevice.currentDevice().identifierForVendor!.UUIDString
        
        return UUID
    }
    
    // MARK :Actions
    
    @IBAction func openUIWebView(sender: AnyObject) {
        
        print("=======openUIWebView")
        
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
   
    @IBAction func openInSFSafariViewController(sender: AnyObject) {
        
       let tryUrl = NSURL(string:"http://wx.itry.com/itry/xb_verify?param=F87C6E8D83DD20D76C6FED0F5623672C&idfa=C84F8C7E-44C2-4BD7-8916-499199B8833A&msg=100&ver=1.19&binding=29_1")!
        
        print("try------\(tryUrl)")
        
        let url = NSURL(string: "http://atschx.com")
//        let sfsvc = SFSafariViewController(URL:url!, entersReaderIfAvailable: true )
        let sfsvc = SFSafariViewController(URL:url!)
        sfsvc.title="welcome"
        self.presentViewController(sfsvc,animated:true,completion:nil)
    }

    @IBAction func showAdvertisingIdentifier(sender: AnyObject) {
        lblAdvertisingIdentifier.text="121212"
    }
}

