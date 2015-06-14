//
//  MasterViewController.swift
//  MasterDetailAppTest
//
//  Created by Yutaro  on 2015/02/22.
//  Copyright (c) 2015年 Yutaro Obayashi. All rights reserved.
//

import UIKit

class Grade3ViewController: UITableViewController {
    
    var objects = NSMutableArray()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // タイトルをつける
        self.title = "GradeⅢ"
        // 表示データを配列で用意する
        objects = [
            "中山金杯",
            "京都金杯",
            "シンザン記念",
            "フェアリーS",
            "京成杯",
            "京都牝馬S",
            "根岸S",
            "シルクロードS",
            "東京新聞杯",
            "きさらぎ賞",
            "クイーンC",
            "共同通信杯",
            "ダイヤモンドS",
            "小倉大賞典",
            "アーリントンC",
            "阪急杯",
            "オーシャンS",
            "チューリップ賞",
            "中日新聞杯",
            "中山牝馬S",
            "フラワーC",
            "ファルコンS",
            "毎日杯",
            "マーチS",
            "ダービー卿チャレンジＴ",
            "アンタレスS",
            "福島牝馬S",
            "新潟大賞典",
            "平安S",
            "鳴尾記念",
            "エプソムC",
            "マーメイドS",
            "ユニコーンS",
            "函館スプリントS",
            "東京ジャンプS",
            "ラジオNIKKEI賞",
            "CBC賞",
            "七夕賞",
            "プロキオンS",
            "函館記念",
            "中京記念函館2歳S",
            "小倉サマージャンプ",
            "アイビスサマーダッシュ",
            "クイーンS",
            "レパードS",
            "小倉記念",
            "関屋記念",
            "エルムS",
            "北九州記念",
            "新潟ジャンプS",
            "新潟2歳S",
            "キーンランドC",
            "札幌2歳S",
            "新潟記念",
            "小倉2歳S",
            "京成杯オータムH",
            "阪神ジャンプS",
            "シリウスS",
            "富士S",
            "アルテミスS",
            "ファンタジーS",
            "みやこS",
            "武蔵野S",
            "京都ジャンプS",
            "福島記念",
            "東スポ杯2歳S",
            "京都2歳S",
            "京阪杯",
            "チャレンジC",
            "カペラS"
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
                controller.grade = "grade_3";
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
        var myStr = objects[indexPath.row] as! String
        cell.textLabel!.text = myStr
        return cell
    }
}

