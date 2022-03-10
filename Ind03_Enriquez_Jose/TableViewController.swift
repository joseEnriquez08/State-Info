//
//  TableViewController.swift
//  Ind03_Enriquez_Jose
//
//  Created by Jose Francisco Enriquez on 3/9/22.
//

import UIKit

class TableViewController: UITableViewController {
    let stateNames: [(String, String)] = [
        (name: "Alabama", nickName: "Yellowhammer State"),
        (name: "Alaska", nickName: "The Last Frontier"),
        (name: "Arizona", nickName: "The Grand Canyon State"),
        (name: "Arkansas", nickName: "The Natural State"),
        (name: "California", nickName: "The Golden State"),
        (name: "Colorado", nickName: "The Centennial State"),
        (name: "Connecticut", nickName: "The Constitution State"),
        (name: "Delaware", nickName: "The First State"),
        (name: "Florida", nickName: "The Sunshine State"),
        (name: "Georgia", nickName: "The Peach State"),
        (name: "Hawaii", nickName: "The Aloha State"),
        (name: "Idaho", nickName: "The Gem State State"),
        (name: "Illinois", nickName: "Prairie State"),
        (name: "Indiana", nickName: "The Hoosier State"),
        (name: "Iowa", nickName: "The Hawkeye State"),
        (name: "Kansas", nickName: "The Sunflower State"),
        (name: "Kentucky", nickName: "The Bluegrass State"),
        (name: "Louisiana", nickName: "The Pelican State"),
        (name: "Maine", nickName: "The Pine Tree State"),
        (name: "Maryland", nickName: "The Old Line State"),
        (name: "Massachusetts", nickName: "The Bay State"),
        (name: "Michigan", nickName: "The Greak Lakes State"),
        (name: "Minnesota", nickName: "The North Star State"),
        (name: "Mississippi", nickName: "The Magnolia State"),
        (name: "Missouri", nickName: "The Show Me State"),
        (name: "Montana", nickName: "The Treasure State"),
        (name: "Nebraska", nickName: "The Cornhusker State"),
        (name: "Nevada", nickName: "The Silver State"),
        (name: "New Hampshire", nickName: "The Granite State"),
        (name: "New Jersey", nickName: "The Garden State"),
        (name: "New Mexico", nickName: "The Land of Enchantment State"),
        (name: "New York", nickName: "The Empire State"),
        (name: "North Carolina", nickName: "The Tar Heel State"),
        (name: "North Dakota", nickName: "The Peace Garden State"),
        (name: "Ohio", nickName: "The Buckeye State"),
        (name: "Oklahoma", nickName: "The Sooner State"),
        (name: "Oregon", nickName: "The Beaver State"),
        (name: "Pennsylvania", nickName: "The Keystone State"),
        (name: "Rhode Island", nickName: "The Ocean State"),
        (name: "South Carolina", nickName: "The Palmetto State"),
        (name: "South Dakota", nickName: "Mount Rushmore State"),
        (name: "Tennesse", nickName: "The Volunteer State"),
        (name: "Texas", nickName: "The Lone Star State"),
        (name: "Utah", nickName: "The Behive State"),
        (name: "Vermont", nickName: "The Green Mountain State"),
        (name: "Virginia", nickName: "The Old Dominion State"),
        (name: "Washington", nickName: "The Evergreen State"),
        (name: "West Virginia", nickName: "The Mountain State"),
        (name: "Wisconsin", nickName: "The Badger State"),
        (name: "Wyoming", nickName: "The Equality or Cowboy State")
       
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return stateNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("reach")
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        let cellData: (name: String, nickName: String) = stateNames[indexPath[1]]
        
        cell.textLabel?.text = cellData.name

        return cell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
