//
//  ViewController.swift
//  Sober
//
//  Created by Albert on 12/8/15.
//  Copyright © 2015 Albert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let webview = UIWebView(frame:self.view.bounds)
        webview.bounds=self.view.bounds
        //远程网页
        webview.loadRequest(NSURLRequest(URL: NSURL(string:"http://wx.itry.com/itry/xb_verify?param=F87C6E8D83DD20D76C6FED0F5623672C&idfa=C84F8C7E-44C2-4BD7-8916-499199B8833A&msg=100&ver=1.19&binding=29_1")!))
        //项目资源
//        webview.loadRequest(
//            NSURLRequest(
//                URL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("index", ofType: "html")!)!
//            )
//        )
        
        self.view.addSubview(webview)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

