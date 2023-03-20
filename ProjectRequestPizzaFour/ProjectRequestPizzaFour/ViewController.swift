//
//  ViewController.swift
//  ProjectRequestPizzaFour
//
//  Created by Mirian Santana on 20/03/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btMenu(_ sender: Any) {
        if let screen = storyboard?.instantiateViewController(withIdentifier: "tableView") as? TableViewPizzaViewController {
            
            self.present(screen, animated: true)
        }
    }
    
}

