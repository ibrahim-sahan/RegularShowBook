//
//  detailsVC.swift
//  RegularShowBook
//
//  Created by İbrahim Şahan on 14.03.2024.
//

import UIKit

class detailsVC: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedCast : RegularShowCast?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedCast?.name
        jobLabel.text = selectedCast?.job
        imageView.image = selectedCast?.image
        
    }
    
    

}
