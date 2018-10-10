//
//  DettagliViewController.swift
//  FTime
//
//  Created by mincolellinoemi on 09/10/18.
//  Copyright © 2018 ranaldogiovanni. All rights reserved.
//

import UIKit

class DettagliViewController: UIViewController {
    var evento: String?
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = evento
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
