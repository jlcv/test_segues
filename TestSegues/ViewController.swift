//
//  ViewController.swift
//  TestSegues
//
//  Created by jChavez17 on 10/18/16.
//  Copyright © 2016 jChavez17. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonAWasPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "showDetail", sender: sender)
    }

    @IBAction func buttonBWasPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "showDetail", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destViewController = segue.destination as! DetailViewController
        
        if let buttonTitle = (sender as? UIButton)?.titleLabel?.text {
            destViewController.title = buttonTitle
        }
    }
}

