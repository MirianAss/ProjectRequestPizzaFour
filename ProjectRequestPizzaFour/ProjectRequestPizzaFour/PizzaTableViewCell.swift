//
//  PizzaTableViewCell.swift
//  ProjectRequestPizzaFour
//
//  Created by Mirian Santana on 20/03/23.
//

import UIKit
import SDWebImage

class PizzaTableViewCell: UITableViewCell {

    @IBOutlet weak var lblPizza: UILabel!
    @IBOutlet weak var imagePizza: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupPizza(pizza: PizzaElement?) {
        lblPizza.text = pizza?.name ?? ""
        let urlImage = URL(string: pizza?.imageURL ?? "")
        imagePizza.sd_setImage(with: urlImage)
    }
}
