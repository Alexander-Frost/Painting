//
//  PaintingTableViewCell.swift
//  Painting
//
//  Created by Alex on 4/24/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {

    @IBOutlet var portraitView: UIImageView!
    @IBOutlet var likeBtn: UIButton!
    
    @IBAction func likeBtnPressed(_ sender: UIButton) {
        if likeBtn.title(for: .normal) == "Unliked"{
            likeBtn.setTitle("Liked", for: .normal)
        } else {
            likeBtn.setTitle("Unliked", for: .normal)
        }
    }
    
    private func updateViews(){
        guard let img = img else { return }
        
        portraitView.image = img.myImg
    }
    
    var img: Painting?{
        didSet {
            updateViews()
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
