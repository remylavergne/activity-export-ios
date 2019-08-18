//
//  ViewController.swift
//  ActivityExporter
//
//  Created by Rémy LAVERGNE-PRUDENCE on 18/08/2019.
//  Copyright © 2019 Rémy LAVERGNE-PRUDENCE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    /**
     Functions
     */
    
    // TODO: Demander seulement les Workouts !
    private func authorizeHealthKit() -> Void {
        
        HealthKitSetupAssistant.authorizeHealthKit { (authorized, error) in
            
            guard authorized else {
                
                let baseMessage = "HealthKit Authorization Failed"
                
                if let error = error {
                    print("\(baseMessage). Reason: \(error.localizedDescription)")
                } else {
                    print(baseMessage)
                }
                
                return
            }
            
            print("HealthKit Successfully Authorized.")
        }
    }
    
    /**
     Buttons
     */
    
    @IBAction func authorizationButton(_ sender: Any) {
        print("Authorization Clicked")
        self.authorizeHealthKit()
    }
    
    
}

