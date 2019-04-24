//
//  PaintingModel.swift
//  Painting
//
//  Created by Alex on 4/24/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {
    var paintings: [Painting] = []
    
    func loadImages() {
        for n in 1...12 {
            let imageName = "Image\(n)"
            guard let newImage = UIImage(named: imageName) else { return }
            let paintingImage = Painting(myImg: newImage, isLiked: false)
            paintings.append(paintingImage)
        }
    }
}
