//
//  PickerViewController.swift
//  colorPicker
//
//  Created by Melissa Hollingshed on 12/12/18.
//  Copyright © 2018 Melissa Hollingshed. All rights reserved.
//

import UIKit


class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
      @IBOutlet weak var label: UILabel!
    
    var colors = [
        Color(name: "Red", uiColor: UIColor.red),
        Color(name: "Blue", uiColor: UIColor.blue),
        Color(name: "Green", uiColor: UIColor.green),
        Color(name: "Orange", uiColor: UIColor.orange),
        Color(name: "Yellow", uiColor: UIColor.yellow),
        Color(name: "Purple", uiColor: UIColor.purple),
        Color(name: "Brown", uiColor: UIColor.brown)]
        
    var selectedColor = Color(name: "Red", uiColor: UIColor.red)
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedColor = colors[row]
        label.text = selectedColor.name
        view.backgroundColor = selectedColor.uiColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = selectedColor.name
        view.backgroundColor = selectedColor.uiColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
}
}

