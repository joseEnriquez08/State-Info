//
//  TableViewController.swift
//  Ind03_Enriquez_Jose
//
//  Created by Jose Francisco Enriquez on 3/9/22.
//

import UIKit

class TableViewController: UITableViewController {
    let states: [State] = [
        State(name: "Alabama", nickName: "Yellowhammer State", area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Alaska", nickName: "The Last Frontier", area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Arizona", nickName: "The Grand Canyon State", area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Arkansas", nickName: "The Natural State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "California", nickName: "The Golden State", area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Colorado", nickName: "The Centennial State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Connecticut", nickName: "The Constitution State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Delaware", nickName: "The First State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Florida", nickName: "The Sunshine State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Georgia", nickName: "The Peach State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Hawaii", nickName: "The Aloha State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Idaho", nickName: "The Gem State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Illinois", nickName: "Prairie State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Indiana", nickName: "The Hoosier State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Iowa", nickName: "The Hawkeye State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Kansas", nickName: "The Sunflower State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Kentucky", nickName: "The Bluegrass State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Louisiana", nickName: "The Pelican State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Maine", nickName: "The Pine Tree State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Maryland", nickName: "The Old Line State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Massachusetts", nickName: "The Bay State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Michigan", nickName: "The Greak Lakes State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Minnesota", nickName: "The North Star State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Mississippi", nickName: "The Magnolia State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Missouri", nickName: "The Show Me State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Montana", nickName: "The Treasure State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Nebraska", nickName: "The Cornhusker State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Nevada", nickName: "The Silver State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "New Hampshire", nickName: "The Granite State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "New Jersey", nickName: "The Garden State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "New Mexico", nickName: "The Land of Enchantment State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "New York", nickName: "The Empire State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "North Carolina", nickName: "The Tar Heel State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "North Dakota", nickName: "The Peace Garden State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Ohio", nickName: "The Buckeye State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Oklahoma", nickName: "The Sooner State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Oregon", nickName: "The Beaver State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Pennsylvania", nickName: "The Keystone State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Rhode Island", nickName: "The Ocean State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "South Carolina", nickName: "The Palmetto State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "South Dakota", nickName: "Mount Rushmore State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Tennesse", nickName: "The Volunteer State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Texas", nickName: "The Lone Star State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Utah", nickName: "The Behive State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Vermont", nickName: "The Green Mountain State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Virginia", nickName: "The Old Dominion State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Washington", nickName: "The Evergreen State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "West Virginia", nickName: "The Mountain State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Wisconsin", nickName: "The Badger State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill")),
        State(name: "Wyoming", nickName: "The Equality or Cowboy State",area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill"))
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
        return states.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("reach")
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        let cellData: (name: String, nickName: String) = (states[indexPath[1]].name, states[indexPath[1]].nickName)
        
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondScreen = segue.destination as! ViewController
        
        let indexPath = self.tableView.indexPathForSelectedRow!
        let cellState = states[indexPath.row]
        secondScreen.state = cellState
        
        self.tableView.deselectRow(at: indexPath, animated: true)
    }

}
