//
//  WebViewController.swift
//  Bug-xTerm.js-WKWebView
//
//  Created by hegen Ji on 2021-11-04.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    public var wkWebView: WKWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        wkWebView = WKWebView(frame: self.view.bounds)
        self.view.addSubview(self.wkWebView!)
        
        let request = URLRequest(url: URL(string: "https://xtermjs.org/")!, timeoutInterval: 30)
        self.wkWebView?.load(request)
    }
    
}
