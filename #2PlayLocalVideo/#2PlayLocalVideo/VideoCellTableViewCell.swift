//
//  VideoCellTableViewCell.swift
//  #2PlayLocalVideo
//
//  Created by Talha Varol on 08.03.2022.
//

import UIKit

struct Video{
    let image: String
    let title: String
    let createdBy: String
}




class VideoCellTableViewCell: UITableViewCell {

   
    @IBOutlet weak var videoScreen: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var createdLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
