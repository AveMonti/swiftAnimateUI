//
//  ViewController.swift
//  swiftAnimateUI
//
//  Created by Mateusz Chojnacki on 10/10/2018.
//  Copyright © 2018 Mateusz Chojnacki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var buildingsImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.logoImage.center.x -= self.view.bounds.width
        UIView.animate(withDuration: 0.5) {
            self.logoImage.center.x += self.view.bounds.width
        }
    }

    @IBAction func startAnimateAction(_ sender: Any) {
        
         self.logoImage.center.y -= self.view.bounds.height
        UIView.animate(withDuration: 0.5, delay: 0.3, options: [],
                       animations: {
                        self.logoImage.center.y += self.view.bounds.height
        },
                       completion: nil
        )
    }
    
    @IBAction func animateBuildings(_ sender: Any) {
        
        self.buildingsImage.center.y +=  self.view.bounds.height
        UIView.animate(withDuration: 0.5, delay: 0.3, options: [],
                       animations: {
                        self.buildingsImage.center.y -= self.view.bounds.height
        },
                       completion: nil
        )
    }
    
    
    
    
}

