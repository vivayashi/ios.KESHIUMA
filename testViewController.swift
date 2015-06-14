//
//  testViewController.swift
//  MasterDetailAppTest
//
//  Created by Yutaro OBAYASHI on 2015/02/22.
//  Copyright (c) 2015年 myname. All rights reserved.
//

import UIKit

class testViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myImageView.image = UIImage(named: "horse.jpg")
        //self.view.addSubview(myImageView)
        myImageView.alpha = 0.2;
        self.view.sendSubviewToBack(myImageView)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
