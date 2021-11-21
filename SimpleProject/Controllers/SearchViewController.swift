//
//  SearchViewController.swift
//  SimpleProject
//
//  Created by Ekaterina Kugeneva on 19.11.2021.
//

import UIKit

class SearchViewController: UIViewController {
    
    var drugsList: [Drug]!
    
    private var filteredDrugsList: [Drug] = []
    
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func searchButtonPressed() {
        
        performSegue(withIdentifier: "searchResult", sender: UIButton.self)
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else {return}
        guard let destController = navigationVC.topViewController as? ListViewController else {return}
        
        let text = searchTextField.text ?? ""
        if text == "" {
            filteredDrugsList = drugsList
        } else {
            filteredDrugsList.removeAll()
            filteredDrugsList = drugsList.filter{ $0.name.lowercased().contains(text.lowercased())}
        }
        
        destController.drugsList = filteredDrugsList
        
        
    }
}
