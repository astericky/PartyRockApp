//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Christopher Sanders on 5/13/17.
//  Copyright © 2017 Christopher Sanders. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {
    
    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
    }

}
