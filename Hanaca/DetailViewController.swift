//
//  DetailViewController.swift
//  Hanaca
//
//  Created by DDD on 31/05/20.
//  Copyright © 2020 Dandun Adi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var aksara: Aksara?

    @IBOutlet var aksaraLabel: UILabel!
    @IBOutlet var alfabetLabel: UILabel!
    @IBOutlet var contohLabel: UILabel!
    @IBOutlet var ctBacaLabel: UILabel!
    @IBOutlet var keteranganLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        aksaraLabel.text = aksara?.code
        alfabetLabel.text = aksara?.baca
        contohLabel.text = aksara?.contoh
        ctBacaLabel.text = aksara?.ctBaca
        keteranganLabel.text = aksara?.keterangan
    }

}
