//
//  TableViewPizzaViewController.swift
//  ProjectRequestPizzaFour
//
//  Created by Mirian Santana on 20/03/23.
//

import UIKit
import Alamofire

class TableViewPizzaViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrayPizza: Pizza?
    
    let request = Request()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.register(UINib(nibName: "PizzaTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        tableView.delegate = self
        
        request.requestPizza{ arrayDePizza in
            self.arrayPizza = arrayDePizza
            self.tableView.reloadData()
        }
    }
}

extension TableViewPizzaViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayPizza?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? PizzaTableViewCell {
            
            cell.setupPizza(pizza: self.arrayPizza?[indexPath.row])
            
            return cell
        }
        return UITableViewCell()
    }
    
}
extension TableViewPizzaViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let screen = storyboard?.instantiateViewController(withIdentifier: "pizza")as? ScreenPizzaViewController {
            
            screen.screenPizza = self.arrayPizza?[indexPath.row]
            
            self.present(screen, animated: true)
        }
    }
}
