//
//  ViewController.swift
//  RegularShowBook
//
//  Created by İbrahim Şahan on 13.03.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var myCast = [RegularShowCast]()
    
    var chosenCast : RegularShowCast?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let mordecai = RegularShowCast(castName: "Mordecai", castJob: "Groundskeeper", castImage: UIImage(named: "mordecai")!)
        let rigby = RegularShowCast(castName: "Rigby", castJob: "Groundskeeper", castImage: UIImage(named: "rigby")!)
        let benson = RegularShowCast(castName: "Benson", castJob: "Park Owner", castImage: UIImage(named: "benson")!)
        let pops = RegularShowCast(castName: "Pops", castJob: "Manager", castImage: UIImage(named: "pops")!)
        let skips = RegularShowCast(castName: "Skips", castJob: "Groundskeeper", castImage: UIImage(named: "skips")!)
        let muscleMan = RegularShowCast(castName: "Muscle Man", castJob: "Bodybuilder", castImage: UIImage(named: "muscleman")!)
        
        myCast.append(mordecai)
        myCast.append(rigby)
        myCast.append(benson)
        myCast.append(pops)
        myCast.append(skips)
        myCast.append(muscleMan)
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCast.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = myCast[indexPath.row].name
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        chosenCast = myCast[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDetailsVC" {
            
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedCast = chosenCast
            
        }
    }
}

