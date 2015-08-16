//
//  SentMemesCollectionViewController.swift
//  meme-me
//
//  Created by Jessica Uelmen on 8/15/15.
//  Copyright (c) 2015 Jessica Uelmen. All rights reserved.
//

import UIKit

class SentMemesCollectionViewController : UICollectionViewController {
    
    var memes: [Meme]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        
        let object = UIApplication.sharedApplication().delegate
        let appDelegate = object as! AppDelegate
        memes = appDelegate.memes
    }

    
    @IBAction func returnToTableView(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
