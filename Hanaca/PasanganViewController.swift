//
//  PasanganViewController.swift
//  Hanaca
//
//  Created by DDD on 30/05/20.
//  Copyright © 2020 Dandun Adi. All rights reserved.
//

import UIKit

class PasanganViewController: UICollectionViewController {
    
    let aksaraJawa: [Aksara] = AksaraManager.shared.getPasangan()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
        self.parent?.title = "AKSARA PASANGAN"
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return aksaraJawa.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        
        if let aksaraCell = collectionView.dequeueReusableCell(withReuseIdentifier: "PasanganCell", for: indexPath) as? PasanganViewCell {
            aksaraCell.configure(with: aksaraJawa[indexPath.row])
            cell = aksaraCell
        }
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(aksaraJawa[indexPath.row].baca)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetail" {
            if let destination = segue.destination as? DetailViewController {
                let cell = sender as! PasanganViewCell
                let indexPaths = self.collectionView.indexPath(for: cell)
                print(indexPaths!.row)
                destination.aksara = aksaraJawa[indexPaths!.row]
            }
        }
    }
}
