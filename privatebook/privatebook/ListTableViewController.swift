//
//  ListTableViewController.swift
//  privatebook
//
//  Created by tm on 16/7/26.
//  Copyright © 2016年 tm. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    var personList = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData { (datalist) in
            self.personList += datalist
            self.tableView.reloadData()
        }
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    func loadData(completion:(datalist:[Person]) -> ()) -> () {
        print("正在加载中")
        DispatchQueue.global().async {
            Thread.sleep(forTimeInterval: 1)
            
            var arrarD = [Person]()
            
            for i in 0..<20 {
                let p = Person()
                p.name = "zhangsan - \(i)"
                p.phone = "138" + String(format: "%06d", arc4random_uniform(10000000))
                p.title = "这个家伙好懒"
                arrarD.append(p)
            }
            
            DispatchQueue.main.async {
                completion(datalist: arrarD)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return personList.count
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return personList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let p = personList[indexPath.row]
        cell.textLabel?.text = p.name
        cell.detailTextLabel?.text = p.phone
        
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "list2detail", sender: indexPath)
        
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        let vc = segue.destinationViewController as! DetailTableViewController
        if let indexpath = sender as? IndexPath {
            let p = personList[indexpath.row]
            vc.person = p
        }
        
        
    }


}
