//
//  GameCell.swift
//  kino
//
//  Created by user on 26.07.2023.
//

import UIKit

class GameCell: UITableViewCell {

    @IBOutlet weak var nameGame: UILabel!
    @IBOutlet weak var imagegame: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
