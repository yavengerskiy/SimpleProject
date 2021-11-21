//
//  ListViewController.swift
//  SimpleProject
//
//  Created by Ekaterina Kugeneva on 19.11.2021.
//

import UIKit

class ListViewController: UITableViewController {
    
    var drugsList: [Drug]!
    
    private var filteredDrugsList: [Drug] = []
    private var search = UISearchController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
        
        search = UISearchController(searchResultsController: nil)
        search.searchResultsUpdater = self
        self.navigationItem.searchController = search
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isSearch(){
            return filteredDrugsList.count
        }
        return drugsList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        if isSearch(){
            content.text =  filteredDrugsList[indexPath.row].name
            content.secondaryText = "Цена: \(filteredDrugsList[indexPath.row].price) рублей"
            content.image = UIImage(named: filteredDrugsList[indexPath.row].photo)
        } else {
            content.text =  drugsList[indexPath.row].name
            content.secondaryText = "Цена: \(drugsList[indexPath.row].price) рублей"
            content.image = UIImage(named: drugsList[indexPath.row].photo)
        }
        cell.contentConfiguration = content
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let drugDetaislVC = segue.destination as? DetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let drug: Drug
        if isSearch() {
            drug = filteredDrugsList[indexPath.row]
        } else {
            drug = drugsList[indexPath.row]
        }
        drugDetaislVC.drug = drug
    }
    
    
}

extension ListViewController: UISearchResultsUpdating {
    
    private func searchBarIsEmpty() -> Bool {
        search.searchBar.text?.isEmpty ?? true
    }
    
    private func isSearch() -> Bool {
        search.isActive && !searchBarIsEmpty()
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        let text = searchController.searchBar.text ?? ""
        filteredDrugsList.removeAll()
        filteredDrugsList = drugsList.filter{ $0.name.lowercased().contains(text.lowercased())}
        tableView.reloadData()
        print(filteredDrugsList)
    }
    
}
