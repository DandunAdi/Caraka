//
//  PasanganViewCell.swift
//  Hanaca
//
//  Created by DDD on 30/05/20.
//  Copyright © 2020 Dandun Adi. All rights reserved.
//
import UIKit

class PasanganViewCell: UICollectionViewCell {
    @IBOutlet var aksaraLabel: UILabel!
    @IBOutlet var alfabetLabel: UILabel!
    
    
    func configure(with aksara: Aksara) {
        aksaraLabel.text = aksara.code
        alfabetLabel.text = aksara.baca
    }
}
