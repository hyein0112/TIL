//
//  ViewController.swift
//  WebView
//
//  Created by GSM02 on 2021/07/11.
//

import UIKit
import WebKit //WebView를 사용하기 위함

class ViewController: UIViewController {
 
   
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    let urlString = "https://github.com/"
        //웹 주소를 URL 형태로 바꿈
        if let url = URL(string: urlString){
            //URL을 리퀘스트 해줌
            let urlReq = URLRequest(url: url)
            //webView에 불러옴
            webView.load(urlReq)
        }
    }


}

