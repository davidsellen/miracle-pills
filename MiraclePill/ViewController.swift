//
//  ViewController.swift
//  MiraclePill
//
//  Created by David Sellen Lima dos Santos on 25/04/17.
//  Copyright © 2017 dscode. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var statePickerBtn: UIButton!
    
    let states = ["Alaska", "Arkansas", "Alabama",  "California", "Maine", "New York"]
    
    @IBOutlet weak var zipCodeLb: UILabel!
    @IBOutlet weak var zipCodeTxt: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        zipCodeLb.isHidden = true
        zipCodeTxt.isHidden = true
        buyNowBtn.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        zipCodeTxt.isHidden = false
        zipCodeLb.isHidden = false
        buyNowBtn.isHidden = false
    }
    
    @IBAction func buyNowPressed(_ sender: Any) {
        let image: UIImage = UIImage(named: "successIndicator")!
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        self.view.addSubview(imageView)
        
    }
}

