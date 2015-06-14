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
    @IBOutlet weak var info_Track: UILabel!
    @IBOutlet weak var info_Popularity: UILabel!
    @IBOutlet weak var info_Blood: UILabel!
    @IBOutlet weak var info_PreRunning: UILabel!
    
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
        self.info_Track.text = self.detailItem as! String + "の枠情報";
        self.info_Popularity.text = self.detailItem as! String + "の人気情報";
        self.info_Blood.text = self.detailItem as! String + "の血統情報";
        self.info_PreRunning.text = self.detailItem as! String + "の前走情報";

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

