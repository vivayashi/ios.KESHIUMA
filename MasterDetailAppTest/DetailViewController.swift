//
//  DetailViewController.swift
//  MasterDetailAppTest
//
//  Created by Yutaro Obayashi on 2015/02/22.
//  Copyright (c) 2014年 Yutaro Obayashi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var scrollview: UIScrollView!

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            //self.configureView()
        }
    }
    
    var grade: String = "";
    var indexRow: Int = 0;

    func configureView() {
        
        println("タップされたグレード: \(self.grade)");
        println("タップされたレース: \(self.detailItem as! String)")
        println("タップされた行数: \(self.indexRow)");
        /*
        if((self.detailItem as! String) == "高松宮記念") {
            println("高松宮記念押された");
        }
        */
        
    }
    
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    func setBackgroundColor(){
        switch(self.grade) {
        case "grade_1":
            self.view.backgroundColor = UIColorFromRGB(0xddffff);
            break;
            
        case "grade_2":
            self.view.backgroundColor = UIColorFromRGB(0xffddff);
            break;
            
        case "grade_3":
            self.view.backgroundColor = UIColorFromRGB(0xffffdd);
            break;
        default:
            break;
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        scrollview.contentSize.height = 2000;
        // Do any additional setup after loading the view, typically from a nib.
        self.setBackgroundColor();
        self.configureView();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

