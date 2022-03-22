//
//  ViewController.swift
//  Ind03_Enriquez_Jose
//
//  Created by Jose Francisco Enriquez on 3/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var flagImage: UIImageView!
    @IBOutlet weak var mapImage: UIImageView!
    @IBOutlet weak var stateName: UILabel!
    @IBOutlet weak var stateArea: UILabel!
    
    //var holeImage = UIImage.
    var test = "test"
    var state = State(name: "", nickName: "", area: "", flag: UIImage(systemName: "heart.fill"), map: UIImage(systemName: "heart.fill"))
    
   

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        flagImage.image = state.flag
        mapImage.image = state.map
        stateName.text = state.name
        stateArea.text = state.area + " Sq. Miles"
        
    }


}



