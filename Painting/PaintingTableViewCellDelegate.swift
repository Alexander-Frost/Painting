//
//  PaintingTableViewCellDelegate.swift
//  Painting
//
//  Created by Alex on 4/24/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func tappedLikeButton(on cell: PaintingTableViewCell)
}

