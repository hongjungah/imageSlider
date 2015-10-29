//
//  ViewController.swift
//  imageSlider
//
//  Created by sdt5 on 2015. 10. 19..
//  Copyright © 2015년 tacademy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoView: UIImageView!
    
    var itemIndex: Int = 1
    var itemName: String = ""
    
    @IBAction func prev(sender: AnyObject) {
        
        if itemIndex>1 {
            itemIndex--
        }
        itemName = "images-\(itemIndex).jpeg"
        photoView.image = UIImage(named: itemName)
    }
    
    @IBAction func next(sender: AnyObject) {
        
        
        if itemIndex<5 {
            itemIndex++
        }
        itemName = "images-\(itemIndex).jpeg"
        photoView.image = UIImage(named: itemName)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

