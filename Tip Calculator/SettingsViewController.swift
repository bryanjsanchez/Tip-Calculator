//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Bryan J Sanchez on 12/12/16.
//  Copyright © 2016 Bryan J Sanchez. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipValue: UISegmentedControl!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        let tipValue = Int(defaults.double(forKey: "default_tip_percentage"))
        defaultTipValue.selectedSegmentIndex = tipValue
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func defaultTipValue(_ sender: AnyObject) {
        
        let defaults = UserDefaults.standard
        defaults.set(defaultTipValue.selectedSegmentIndex, forKey: "default_tip_percentage")
        defaults.synchronize()
        
    }
    

}
