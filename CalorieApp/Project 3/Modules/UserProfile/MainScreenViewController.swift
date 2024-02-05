//
//  MainScreenViewController.swift
//  Project
//
//  Created by karim on 10.07.2023.
//

import UIKit

class MainScreenViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
        let genderData = ["Мужской", "Женский"]
        let weightData = Array(20...200)
        let heightData = Array(100...250)
    
    
        var genderPickerView = UIPickerView()
        var weightPickerView = UIPickerView()
        var heightPickerView = UIPickerView()
    
    
        var selectedGender: String?
        var selectedWeight: Int?
        var selectedHeight: Int?


        override func viewDidLoad() {
            super.viewDidLoad()
            
            profileImageView.image = UIImage(named: "health.jpg")
            
            GenderPickerView.delegate = self
            GenderPickerView.dataSource = self
            
            
            WeightPickerView.delegate = self
            WeightPickerView.dataSource = self
            
            
            HeightPickerView.delegate = self
            HeightPickerView.dataSource = self
            
            
            GenderPickerView.selectRow(0, inComponent: 0, animated: false)
        }
        
        
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            if pickerView == GenderPickerView {
                return genderData.count
            } else if pickerView == WeightPickerView {
                return weightData.count
            } else if pickerView == HeightPickerView {
                return heightData.count
            }
            return 0
        }
        
        
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            if pickerView == GenderPickerView {
                return genderData[row]
            } else if pickerView == WeightPickerView {
                return "\(weightData[row]) кг"
            } else if pickerView == HeightPickerView {
                return "\(heightData[row]) см"
            }
            return nil
        }
        
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            if pickerView == GenderPickerView {
                let selectedGender = genderData[row]
               
            } else if pickerView == WeightPickerView {
                let selectedWeight = weightData[row]
                
            } else if pickerView == HeightPickerView {
                let selectedHeight = heightData[row]
                
            }
        }


    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var HeightPickerView: UIPickerView!
    @IBOutlet weak var WeightPickerView: UIPickerView!
    @IBOutlet weak var DatePickerView: UIDatePicker!
    @IBOutlet weak var GenderPickerView: UIPickerView!
    
    
    @IBOutlet weak var WeightLabel: UILabel!
    @IBOutlet weak var HeaightLabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var GenderLabel: UILabel!
    @IBOutlet weak var BirthLabel: UILabel!
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
}
