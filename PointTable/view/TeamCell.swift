//
//  TeamCell.swift
//  PointTable
//
//  Created by Narkoz on 9.04.2022.
//

import UIKit

class TeamCell: UITableViewCell {
    @IBOutlet weak var arrangementLabel: UILabel!
    @IBOutlet weak var teamLogo: UIImageView!
    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var playLabel: UILabel!
    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet weak var drawLabel: UILabel!
    @IBOutlet weak var lostLabel: UILabel!
    @IBOutlet weak var gfLabel: UILabel!
    @IBOutlet weak var gaLabel: UILabel!
    @IBOutlet weak var pointsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
