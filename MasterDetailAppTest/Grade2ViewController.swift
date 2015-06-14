//
//  MasterViewController.swift
//  MasterDetailAppTest
//
//  Created by Yutaro  on 2015/02/22.
//  Copyright (c) 2015年 Yutaro Obayashi. All rights reserved.
//

import UIKit

class Grade2ViewController: UITableViewController {
    
    var objects = NSMutableArray()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // タイトルをつける
        self.title = "GradeⅡ"
        // 表示データを配列で用意する
        objects = [
            "日経新春杯",
            "アメリカJCC",
            "東海S",
            "京都記念",
            "中山記念",
            "弥生賞",
            "阪神スプリングジャンプ",
            "フィリーズレビュー",
            "日経賞",
            "産経大阪杯",
            "ニュージーランドT",
            "阪神牝馬S",
            "フローラS",
            "マイラーズC",
            "青葉賞",
            "京都新聞杯",
            "京王杯スプリングC",
            "京都ハイジャンプ",
            "目黒記念",
            "札幌記念",
            "セントウルS",
            "ローズS",
            "セントライト記念",
            "オールカマー",
            "神戸新聞杯",
            "毎日王冠",
            "京都大賞典",
            "府中牝馬S",
            "東京ハイジャンプ",
            "スワンS",
            "京王杯2歳S",
            "アルゼンチン共和国杯",
            "デイリー杯2歳S",
            "ステイヤーズS",
            "金鯱賞",
            "阪神C",
            "ホープフルS"
        ]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            // 配列の選択した行を調べてその値を受け渡す
            if let indexPath = self.tableView.indexPathForSelectedRow() {
                let object = objects[indexPath.row] as! String
                let controller = segue.destinationViewController as! DetailViewController
                controller.detailItem = object
                controller.grade = "grade_2";
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

