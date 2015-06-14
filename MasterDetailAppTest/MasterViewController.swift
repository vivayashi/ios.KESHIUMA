//
//  MasterViewController.swift
//  MasterDetailAppTest
//
//  Created by Yutaro  on 2015/02/22.
//  Copyright (c) 2015年 Yutaro Obayashi. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    var objects = NSMutableArray()


    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // タイトルをつける
        self.title = "GradeⅠ"
        // 表示データを配列で用意する
        objects = ["フェブラリーS",
            "高松宮記念",
            "桜花賞",
            "中山グランドジャンプ",
            "皐月賞",
            "天皇賞(春)",
            "NHKマイルC",
            "ヴィクトリアマイル",
            "オークス",
            "日本ダービー",
            "安田記念",
            "宝塚記念",
            "スプリンターズS",
            "秋華賞",
            "天皇賞(秋)",
            "エリザベス女王杯",
            "マイルチャンピオンシップ",
            "ジャパンC",
            "チャンピオンズC",
            "阪神ジュベナイルF",
            "中山大障害",
            "朝日杯フューチュリティS",
            "有馬記念",
        ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            // 配列の選択した行を調べてその値を受け渡す
            if let indexPath = self.tableView.indexPathForSelectedRow() {
                //println(indexPath.row); // テーブルの行が返る
                let object = objects[indexPath.row] as! String
                let controller = segue.destinationViewController as! DetailViewController
                controller.detailItem = object; //これをDetailViewControllerに渡したい
                controller.grade = "grade_1";
                controller.indexRow = indexPath.row;
                
            }
        }
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        //  表示する行のラベルに、配列の値を設定する
        var myStr = objects[indexPath.row] as! String
        cell.textLabel!.text = myStr
        //println(indexPath.row);
        return cell
    }

}

