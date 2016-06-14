//
//  ViewController.swift
//  ImageZoomer
//
//  Created by Alexander Larionov on 10.06.16.
//  Copyright © 2016 Alexander Larionov. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UIScrollViewDelegate {
    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var ImageView: SPBBackgroundZommer!

    var currentOffset : Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        TableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
       let offset = Float(scrollView.contentOffset.y)
        if (offset <= 0.0){
            ImageView.Zoom(offset, currentOffset: currentOffset)
            currentOffset = offset
            view.layoutIfNeeded()
            
        }else if (offset <= -50.0){
            scrollView.contentOffset.y = -50.0
        }
    }
    
    func scrollViewDidScrollToTop(scrollView: UIScrollView) {
        currentOffset = 0
    }

}
