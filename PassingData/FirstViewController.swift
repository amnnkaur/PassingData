//
//  ViewController.swift
//  PassingData
//
//  Created by MacStudent on 2020-03-03.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController , UIPickerViewDelegate, UIPickerViewDataSource{
  

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var pickerCountry: UIPickerView!
    
    var countryList = ["India", "Canada", "USA", "UK", "Nepal", "Pakistan"]
    
    var codeList = ["IN", "CA", "US", "UK", "NP"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        pickerCountry.delegate = self
        pickerCountry.dataSource = self
    }

    @IBAction func btnNext(_ sender: UIButton) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = sb.instantiateViewController(identifier: "secondVC") as! SecondViewController
        
        if let name = self.txtName.text
        {
            secondVC.name = name
           self.navigationController?.pushViewController(secondVC, animated: true)
            
         // self.present(secondVC, animated: true, completion: nil)
    }
}
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
          return 2
      }
      
      func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       
       return self.countryList.count
       
      }
      
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return countryList[row]}
        else{
            return codeList[row]}
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(countryList[row])
        print(codeList[row])
    }
}
