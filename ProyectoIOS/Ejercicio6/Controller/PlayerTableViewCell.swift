//
//  PlayerTableViewCell.swift
//  Ejercicio6
//
//  Created by Javi Trujillo on 15/4/21.
//

import UIKit

class PlayerTableViewCell: UITableViewCell {
    
    //Outlets del storyboard
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jerseyLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    //Creamos la función para cargar los jugadores en cada celda
    public func loadPlayer(player: Player) {
        
        //Insertamos los datos del jugador en la celda
        nameLabel.text = player.fanDuelName
        jerseyLabel.text = player.jersey?.description
        positionLabel.text = player.position
    }

}
