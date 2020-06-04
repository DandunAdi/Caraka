//
//  SandhanganViewCell.swift
//  Hanaca
//
//  Created by DDD on 31/05/20.
//  Copyright © 2020 Dandun Adi. All rights reserved.
//

import Foundation

import UIKit

class SandhanganViewCell: UICollectionViewCell {

    @IBOutlet var aksaraLabel: UILabel!
    @IBOutlet var alfabetLabel: UILabel!
    
    func configure(with aksara: Aksara) {
        aksaraLabel.text = aksara.code
        alfabetLabel.text = aksara.baca
    }
}
