//
//  ViewController.swift
//  MiraclePill
//
//  Created by Herdis  Sigurdardottir on 05/02/2017.
//  Copyright © 2017 Herdis  Sigurdardottir. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var successImg: UIImageView!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var cityEntry: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var AddressEntry: UITextField!
    @IBOutlet weak var streetAddressLabel: UILabel!
    @IBOutlet weak var fullNameEntry: UITextField!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var magicPilllabel: UILabel!
    @IBOutlet weak var magicPillImg: UIImageView!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var ZipCodeEntry: UITextField!
    @IBOutlet weak var ZipCodeLabel: UILabel!
    @IBOutlet weak var CountryEntry: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    
    let states = ["Alaska", "Arkansas", "Alabama", "Calefornia", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLabel.isHidden = true
        CountryEntry.isHidden = true
        ZipCodeEntry.isHidden = true
        ZipCodeLabel.isHidden = true
    }
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        statePicker.isHidden = true
        countryLabel.isHidden = true
        CountryEntry.isHidden = true
        ZipCodeEntry.isHidden = true
        ZipCodeLabel.isHidden = true
        buyNowBtn.isHidden = true
        magicPillImg.isHidden = true
        magicPilllabel.isHidden = true
        priceLabel.isHidden = true
        statePickerBtn.isHidden = true
        stateLabel.isHidden = true
        cityEntry.isHidden = true
        cityLabel.isHidden = true
        fullNameEntry.isHidden = true
        fullNameLabel.isHidden = true
        streetAddressLabel.isHidden = true
        AddressEntry.isHidden = true
        divider.isHidden = true
        successImg.isHidden = false
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
        countryLabel.isHidden = false
        CountryEntry.isHidden = false
        ZipCodeEntry.isHidden = false
        ZipCodeLabel.isHidden = false
    }
}

