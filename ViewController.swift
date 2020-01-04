//
//  ViewController.swift
//  LearningSwift
//
//  Created by Kaiwen Shen on 1/2/20.
//  Copyright © 2020 Kaiwen Shen. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    
    @IBOutlet weak var darkblueBG: UIImageView!
    @IBOutlet weak var powerButton: UIButton!
    @IBOutlet weak var cloudHolder: UIView!
    @IBOutlet weak var Rocket: UIImageView!
    @IBOutlet weak var letslbl: UILabel!
    @IBOutlet weak var flylbl: UILabel!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        } catch let error as NSError {
            print(error.description)
        }
    }


    @IBAction func powerButtonPressed(_ sender: Any) {
        cloudHolder.isHidden = false
        darkblueBG.isHidden = true
        powerButton.isHidden = true
        
        player.play()
        
        UIView.animate(withDuration: 2, animations: {
            self.Rocket.frame = CGRect(x: 278, y: -100, width: 180, height: 704)
        }) { (finished) in
            self.letslbl.isHidden = false
            self.flylbl.isHidden = false
            
            self.Rocket.isHidden = true
        }
        
        
    }
    
    
}

