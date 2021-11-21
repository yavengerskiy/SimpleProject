//
//  DetailsViewController.swift
//  SimpleProject
//
//  Created by Ekaterina Kugeneva on 19.11.2021.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var drug: Drug!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var drugLogoImageView: UIImageView!
    @IBOutlet weak var manufactureLabel: UILabel!
    @IBOutlet weak var dosageLabel: UILabel!
    @IBOutlet weak var substanceLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setValue()
    }
    
    private func setValue(){
        nameLabel.text = drug.name
        drugLogoImageView.image = UIImage(named: drug.photo)
        manufactureLabel.text = "Производитель: \(drug.manufacturer)"
        dosageLabel.text = "Дозировка: \(drug.dosage)"
        substanceLabel.text = "Состав: \(drug.substance)"
        priceLabel.text = "Цена: \(drug.price) рублей"
        descriptionLabel.text = "Описание: \(drug.description)"
    }
}
