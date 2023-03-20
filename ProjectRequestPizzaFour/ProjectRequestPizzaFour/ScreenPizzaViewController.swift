//
//  ScreenPizzaViewController.swift
//  ProjectRequestPizzaFour
//
//  Created by Mirian Santana on 20/03/23.
//

import UIKit

class ScreenPizzaViewController: UIViewController {
    
    var screenPizza: PizzaElement?
    
    @IBOutlet weak var lblPizzaP: UILabel!
    @IBOutlet weak var lblPizzaM: UILabel!
    @IBOutlet weak var lblPizzaG: UILabel!
    @IBOutlet weak var lblPizzaRating: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblPizzaP.text = "PEQUENA - R$\(screenPizza?.priceP ?? 0.0)"
        lblPizzaM.text = "MÉDIA - R$\(screenPizza?.priceM ?? 0.0)"
        lblPizzaG.text = "GRANDE - R$\(screenPizza?.priceG ?? 0.0)"
        lblPizzaRating.text = "\(screenPizza?.rating ?? 0) ESTRELAS"
    }
    
    @IBAction func btMenu(_ sender: Any) {
        self.navigationController?.dismiss(animated: true)
    }
}
