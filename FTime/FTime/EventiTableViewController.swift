//
//  EventiTableViewController.swift
//  FTime
//
//  Created by ranaldogiovanni on 10/10/18.
//  Copyright © 2018 ranaldogiovanni. All rights reserved.
//

import UIKit

class EventiTableViewController: UITableViewController {
    
    var aName: String?
    var eventiCinema = ["Ritorno al futuro"]
    var eventiMusic = ["Musica live","Concerto"]
    var eventiSport = ["Partita Calcio","Partita Basket"]
    var eventiFood = ["Pub"]
    var eventiShopping = ["Fiera"]
    
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
        if (aName == "Music") {
            return eventiMusic.count
        } else {
            return eventiSport.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellEventi", for: indexPath)
        
        if (aName == "Music") {
            cell.textLabel?.text = eventiMusic[indexPath.row]
        } else {
            cell.textLabel?.text = eventiSport[indexPath.row]
        }

        // Configure the cell...

        return cell
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if(segue.identifier == "segueDettagli"){
            if let indexPath = tableView.indexPathForSelectedRow {
                let wc = segue.destination as! DettagliViewController
                if (aName == "Music") {
                    wc.evento = eventiMusic[indexPath.row]
                } else {
                    wc.evento = eventiSport[indexPath.row]
                }
                
            }
        }
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
