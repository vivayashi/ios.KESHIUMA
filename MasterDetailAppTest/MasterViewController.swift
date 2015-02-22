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
                let object = objects[indexPath.row] as String
                let controller = segue.destinationViewController as DetailViewController
                controller.detailItem = object
                
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
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        //  表示する行のラベルに、配列の値を設定する
        var myStr = objects[indexPath.row] as String
        cell.textLabel.text = myStr
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

