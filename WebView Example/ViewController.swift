//
//  ViewController.swift
//  WebView Example
//
//  Created by Tuba Nur YAŞA on 2.03.2022.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    var webView : WKWebView!
    
    override func loadView() {
        webView = WKWebView()
            webView.navigationDelegate = self
            view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.youtube.com/watch?v=nLmtfI1UtXQ&t=634s")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }


}

