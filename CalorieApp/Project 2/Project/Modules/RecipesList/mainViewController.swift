//
//  mainViewController.swift
//  Project
//
//  Created by Федор Дюльдев on 10.07.2023.
//

import UIKit
class mainViewController: UIViewController{
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    @IBAction func backButtonDidTap (_ sender: Any){
        navigationController?.popViewController(animated: true)
    }
    
    func setUp(tittle: String ){
        titleLabel.text = tittle
    }
}
    
class NewmainViewController: UIViewController{
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func backButtonDidTap(_ sender: Any){
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "mainViewController") else { return }
        
        navigationController?.popViewController(animated: true)
    }
    
    func setUp(tittle: String ){
        titleLabel.text = tittle
    }
}





