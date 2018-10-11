//
//  EventiTableViewController.swift
//  FTime
//
//  Created by ranaldogiovanni on 10/10/18.
//  Copyright © 2018 ranaldogiovanni. All rights reserved.
//

import UIKit

struct EventsSTR {
    var nameEvent: String?
    var typeEvent: String?
    var hourEvent: String?
    var imageEvent: String?
}

class EventiTableViewController: UITableViewController {
    
    var aName: String?
    
    var events: [EventsSTR] = []
    
    var eventiCinemaName = ["Ritorno al futuro"]
    
    var eventiMusicName = ["Irish Pub","Sagra dei Funghi Porcini", "SannioFest"]
    var eventiMusicType = ["Musica live", "Concerto Trementisti", "Concerto Banda Bardò"]
    var eventiMusicHour = ["21.30-24.00", "22.00-24.00", "22.30-24.00"]
    var eventiMusicImage = ["cinema.jpg","music.jpg","sport.jpg"]
    
    
    var eventiSportName = ["Partita Calcio","Partita Basket"]
    
    var eventiFoodName = ["Pub"]
    
    var eventiShoppingName = ["Fiera"]
    
    override func viewDidLoad() {
        
        for i in 0..<eventiMusicName.count {
            events.append(EventsSTR(nameEvent: eventiMusicName[i], typeEvent: eventiMusicType[i], hourEvent: eventiMusicHour[i], imageEvent: eventiMusicImage[i]))
            
        }
        
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
        if (aName == "CINEMA") {
            return eventiCinemaName.count
        } else if (aName == "MUSIC") {
            return events.count
        } else if (aName == "SPORT") {
            return eventiSportName.count
        } else if (aName == "FOOD") {
            return eventiFoodName.count
        } else {
            return eventiShoppingName.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellEventi", for: indexPath) as! EventiTableViewCell

        if (aName == "CINEMA") {
            cell.labelName.text = eventiCinemaName[indexPath.row]
        } else if (aName == "MUSIC") {
            cell.labelName.text = events[indexPath.row].nameEvent
            cell.labelType.text = events[indexPath.row].typeEvent
            cell.labelHour.text = events[indexPath.row].hourEvent
        } else if (aName == "SPORT") {
            cell.labelName.text = eventiSportName[indexPath.row]
        } else if (aName == "FOOD") {
            cell.labelName.text = eventiFoodName[indexPath.row]
        } else {
            cell.labelName.text = eventiShoppingName[indexPath.row]
        }

        // Configure the cell...

        return cell
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if(segue.identifier == "segueDettagli"){
            if let indexPath = tableView.indexPathForSelectedRow {
                let wc = segue.destination as! DettagliViewController
                if (aName == "CINEMA") {
                    wc.evento = eventiCinemaName[indexPath.row]
                } else if (aName == "MUSIC") {
                    wc.evento = eventiMusicName[indexPath.row]
                } else if (aName == "SPORT") {
                    wc.evento = eventiSportName[indexPath.row]
                } else if (aName == "FOOD") {
                    wc.evento = eventiFoodName[indexPath.row]
                } else {
                    wc.evento = eventiShoppingName[indexPath.row]
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
