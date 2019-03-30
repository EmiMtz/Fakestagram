//
//  ProfileViewController.swift
//  Fakestagram
//
//  Created by Emiliano Alfredo Martinez Vazquez D3 on 3/30/19.
//  Copyright © 2019 Lòpez Estrada Arturo. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    let arrayImages = ["Emi","emi2","fotoperfil"]
    @IBOutlet weak var portadaImageView: UIImageView!
    
    @IBOutlet weak var photoCollectionView: UICollectionView!
    @IBOutlet weak var profileContainer: UIView!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        // Do any additional setup after loading the view.
    }
    
    func setupUI(){
        
    profileContainer.translatesAutoresizingMaskIntoConstraints = false
        profileContainer.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        profileContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        profileContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        profileContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.30).isActive = true
        

        imageView.layer.masksToBounds = true
       imageView.layer.cornerRadius = imageView.bounds.size.width / 2.0
        
    photoCollectionView.translatesAutoresizingMaskIntoConstraints = false
    photoCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        photoCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        photoCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        photoCollectionView.topAnchor.constraint(equalTo: profileContainer.bottomAnchor, constant: 50).isActive = true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
