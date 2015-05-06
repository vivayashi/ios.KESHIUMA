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
        self.title = "GradeⅠ"
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
        /*
        self.navigationItem.leftBarButtonItem = self.editButtonItem()
        
        let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "insertNewObject:")
        self.navigationItem.rightBarButtonItem = addButton
        */
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    func insertNewObject(sender: AnyObject) {
    objects.insertObject(NSDate.date(), atIndex: 0)
    let indexPath = NSIndexPath(forRow: 0, inSection: 0)
    self.tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
    }
    */
    // MARK: - Segues
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            // 配列の選択した行を調べてその値を受け渡す
            if let indexPath = self.tableView.indexPathForSelectedRow() {
                println(indexPath.row); // テーブルの行が返る
                let object = objects[indexPath.row] as! String
                let controller = segue.destinationViewController as! DetailViewController
                controller.detailItem = object
                //let tabcontroller = segue.destinationViewController as! UITabBarViewController
                //tabcontroller.detailItem = object
                
                
            }
        }
    }
    
    // MARK: - Table View
    
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
    /*
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return false if you do not want the specified item to be editable.
    return true
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if editingStyle == .Delete {
    objects.removeObjectAtIndex(indexPath.row)
    tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    } else if editingStyle == .Insert {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
    }
    */
    
}

