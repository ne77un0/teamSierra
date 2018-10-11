//
//  ImpostazioniViewController.swift
//  FTime
//
//  Created by ranaldogiovanni on 09/10/18.
//  Copyright © 2018 ranaldogiovanni. All rights reserved.
//

import UIKit

class ImpostazioniViewController: UIViewController {
    
   
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var preferencesView: PreferencesView!
    @IBOutlet weak var profileView: ProfileView!
    @IBOutlet weak var segment: UISegmentedControl!
    
    @IBAction func `switch`(_ sender: Any) {
        
        switch segment.selectedSegmentIndex{
        case 0:
            NSLog("Profile selected")
            preferencesView.isHidden = true
            profileView.isHidden = false
            
        case 1:
            NSLog("Preferences selected")
            profileView.isHidden = true
            preferencesView.isHidden = false
            
            
            
        default:
            break
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        preferencesView.isHidden = true
        profileView.isHidden = false
       
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
