//
//  TableViewController.swift
//  Ind03_Enriquez_Jose
//
//  Created by Jose Francisco Enriquez on 3/9/22.
//

import UIKit

class TableViewController: UITableViewController {
    let states: [State] = [
        State(name: "Alabama", nickName: "Yellowhammer State", area: "50,744", flag: UIImage(named: "FlagAlabama.png"), map: UIImage(named: "MapAlabama.png")),
        State(name: "Alaska", nickName: "The Last Frontier", area: "571,951", flag: UIImage(named: "FlagAlaska"), map:UIImage(named: "MapAlaska.png")),
        State(name: "Arizona", nickName: "The Grand Canyon State", area: "113,635", flag: UIImage(named: "FlagArizona"), map: UIImage(named: "MapArizona.png")),
        State(name: "Arkansas", nickName: "The Natural State",area: "52,068", flag: UIImage(named: "FlagArkansas"), map: UIImage(named: "MapArkansas.png")),
        State(name: "California", nickName: "The Golden State", area: "155,959", flag: UIImage(named: "FlagCalifornia"), map: UIImage(named: "MapCalifornia.png")),
        State(name: "Colorado", nickName: "The Centennial State",area: "103,718", flag: UIImage(named: "FlagColorado"), map: UIImage(named: "MapColorado.png")),
        State(name: "Connecticut", nickName: "The Constitution State",area: "4,845", flag: UIImage(named: "FlagConnecticut"), map: UIImage(named: "MapConnecticut.png")),
        State(name: "Delaware", nickName: "The First State",area: "1,954", flag: UIImage(named: "FlagDelaware"), map: UIImage(named: "MapDelaware.png")),
        State(name: "Florida", nickName: "The Sunshine State",area: "53,927", flag: UIImage(named: "FlagFlorida"), map: UIImage(named: "MapFlorida.png")),
        State(name: "Georgia", nickName: "The Peach State",area: "57,906", flag: UIImage(named: "FlagGeorgia.png"), map: UIImage(named: "MapGeorgia.png")),
        State(name: "Hawaii", nickName: "The Aloha State",area: "6,423", flag: UIImage(named: "FlagHawaii.png"), map: UIImage(named: "MapHawaii.png")),
        State(name: "Idaho", nickName: "The Gem State",area: "82,747", flag: UIImage(named: "FlagIdaho.png"), map: UIImage(named: "MapIdaho.png")),
        State(name: "Illinois", nickName: "Prairie State",area: "55,584", flag: UIImage(named: "FlagIllinois.png"), map: UIImage(named: "MapIllinois.png")),
        State(name: "Indiana", nickName: "The Hoosier State",area: "35,867", flag: UIImage(named: "FlagIndiana.png"), map: UIImage(named: "MapIndiana.png")),
        State(name: "Iowa", nickName: "The Hawkeye State",area: "55,869", flag: UIImage(named: "FlagIowa.png"), map: UIImage(named: "MapIowa.png")),
        State(name: "Kansas", nickName: "The Sunflower State",area: "81,815", flag: UIImage(named: "FlagKansas.png"), map: UIImage(named: "MapKansas.png")),
        State(name: "Kentucky", nickName: "The Bluegrass State",area: "39,728", flag: UIImage(named: "FlagKentucky.png"), map: UIImage(named: "MapKentucky.png")),
        State(name: "Louisiana", nickName: "The Pelican State",area: "43,562", flag: UIImage(named: "FlagLouisiana.png"), map: UIImage(named: "MapLouisiana.png")),
        State(name: "Maine", nickName: "The Pine Tree State",area: "30,862", flag: UIImage(named: "FlagMaine.png"), map: UIImage(named: "MapMaine.png")),
        State(name: "Maryland", nickName: "The Old Line State",area: "9,774", flag: UIImage(named: "FlagMaryland.png"), map: UIImage(named: "MapMaryland.png")),
        State(name: "Massachusetts", nickName: "The Bay State",area: "7,840", flag: UIImage(named: "FlagMassachusetts.png"), map: UIImage(named: "MapMassachusetts.png")),
        State(name: "Michigan", nickName: "The Greak Lakes State",area: "56,804", flag: UIImage(named: "FlagMichigan.png"), map: UIImage(named: "MapMichigan.png")),
        State(name: "Minnesota", nickName: "The North Star State",area: "79,610", flag: UIImage(named: "FlagMinnesota.png"), map: UIImage(named: "MapMinnesota.png")),
        State(name: "Mississippi", nickName: "The Magnolia State",area: "46,907", flag: UIImage(named: "FlagMississippi.png"), map: UIImage(named: "MapMississippi.png")),
        State(name: "Missouri", nickName: "The Show Me State",area: "68,886", flag: UIImage(named: "FlagMissouri.png"), map: UIImage(named: "MapMissouri.png")),
        State(name: "Montana", nickName: "The Treasure State",area: "145,552", flag: UIImage(named: "FlagMontana.png"), map: UIImage(named: "MapMontana.png")),
        State(name: "Nebraska", nickName: "The Cornhusker State",area: "76,872", flag: UIImage(named: "FlagNebraska.png"), map: UIImage(named: "MapNebraska.png")),
        State(name: "Nevada", nickName: "The Silver State",area: "109,826", flag: UIImage(named: "FlagNevada.png"), map: UIImage(named: "MapNevada.png")),
        State(name: "New Hampshire", nickName: "The Granite State",area: "8,968", flag: UIImage(named: "FlagNewHampshire"), map: UIImage(named: "MapNewHampshire.png")),
        State(name: "New Jersey", nickName: "The Garden State",area: "7,417", flag: UIImage(named: "FlagNewJersey.png"), map: UIImage(named: "MapNewJersey.png")),
        State(name: "New Mexico", nickName: "The Land of Enchantment State",area: "121,356", flag: UIImage(named: "FlagNewMexico.png"), map: UIImage(named: "MapNewMexico.png")),
        State(name: "New York", nickName: "The Empire State",area: "47,214", flag: UIImage(named: "FlagNewYork.png"), map: UIImage(named: "MapNewYork.png")),
        State(name: "North Carolina", nickName: "The Tar Heel State",area: "48,711", flag: UIImage(named: "FlagNorthCarolina.png"), map: UIImage(named: "MapNorthCarolina.png")),
        State(name: "North Dakota", nickName: "The Peace Garden State",area: "68,976", flag: UIImage(named: "FlagNorthDakota.png"), map: UIImage(named: "MapNorthDakota.png")),
        State(name: "Ohio", nickName: "The Buckeye State",area: "40,948", flag: UIImage(named: "FlagOhio.png"), map: UIImage(named: "MapOhio.png")),
        State(name: "Oklahoma", nickName: "The Sooner State",area: "68,667", flag: UIImage(named: "FlagOklahoma.png"), map: UIImage(named: "MapOklahoma.png")),
        State(name: "Oregon", nickName: "The Beaver State",area: "95,997", flag: UIImage(named: "FlagOregon.png"), map: UIImage(named: "MapOregon.png")),
        State(name: "Pennsylvania", nickName: "The Keystone State",area: "44,817", flag: UIImage(named: "FlagPennsylvania.png"), map: UIImage(named: "MapPennsylvania.png")),
        State(name: "Rhode Island", nickName: "The Ocean State",area: "1,045", flag: UIImage(named: "FlagRhodeIsland.png"), map: UIImage(named: "MapRhodeIsland.png")),
        State(name: "South Carolina", nickName: "The Palmetto State",area: "30,109", flag: UIImage(named: "FlagSouthCarolina.png"), map: UIImage(named: "MapSouthCarolina.png")),
        State(name: "South Dakota", nickName: "Mount Rushmore State",area: "75,885", flag: UIImage(named: "FlagSouthDakota.png"), map: UIImage(named: "MapSouthDakota.png")),
        State(name: "Tennessee", nickName: "The Volunteer State",area: "41,217", flag: UIImage(named: "FlagTennessee.png"), map: UIImage(named: "MapTennessee.png")),
        State(name: "Texas", nickName: "The Lone Star State",area: "261,797", flag: UIImage(named: "FlagTexas.png"), map: UIImage(named: "MapTexas.png")),
        State(name: "Utah", nickName: "The Behive State",area: "82,144", flag: UIImage(named: "FlagUtah.png"), map: UIImage(named: "MapUtah.png")),
        State(name: "Vermont", nickName: "The Green Mountain State",area: "9,250", flag: UIImage(named: "FlagVermont.png"), map: UIImage(named: "MapVermont.png")),
        State(name: "Virginia", nickName: "The Old Dominion State",area: "39,594", flag: UIImage(named: "FlagVirginia.png"), map: UIImage(named: "MapVirginia.png")),
        State(name: "Washington", nickName: "The Evergreen State",area: "66,544", flag: UIImage(named: "FlagWashington.png"), map: UIImage(named: "MapWashington.png")),
        State(name: "West Virginia", nickName: "The Mountain State",area: "24,078", flag: UIImage(named: "FlagWestVirginia.png"), map: UIImage(named: "MapWestVirginia.png")),
        State(name: "Wisconsin", nickName: "The Badger State",area: "54,310", flag: UIImage(named: "FlagWisconsin.png"), map: UIImage(named: "MapWisconsin.png")),
        State(name: "Wyoming", nickName: "The Equality or Cowboy State",area: "97,100", flag: UIImage(named: "FlagWyoming.png"), map: UIImage(named: "MapWyoming.png"))
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
