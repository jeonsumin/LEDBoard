//
//  SettingsViewController.swift
//  LEDBoard
//
//  Created by Terry on 2021/12/23.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var yellowbtn: UIButton!
    @IBOutlet weak var purplebtn: UIButton!
    @IBOutlet weak var orangeBtn: UIButton!
    @IBOutlet weak var blueBtn: UIButton!
    @IBOutlet weak var blackBtn: UIButton!
    @IBOutlet weak var greenBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    private func changeTextColor(color: UIColor){
        yellowbtn.alpha = color == UIColor.yellow ? 1 : 0.2
        purplebtn.alpha = color == UIColor.purple ? 1 : 0.2
        greenBtn.alpha = color == UIColor.green ? 1 : 0.2
        
    }
    private func changeBackgroundColor(color: UIColor){
        blackBtn.alpha = color == UIColor.black ? 1 : 0.2
        blueBtn.alpha = color == UIColor.blue ? 1 : 0.2
        orangeBtn.alpha = color == UIColor.orange ? 1 : 0.2
    }
    
    @IBAction func tapTextColorBtn(_ sender: UIButton) {
        if sender == yellowbtn {
            changeTextColor(color: .yellow)
        }else if sender == purplebtn {
            changeTextColor(color: .purple)
        }else if sender == greenBtn {
            changeTextColor(color: .green)
        }
    }
    
    @IBAction func tapBackgroundColorBtn(_ sender: UIButton) {
        if sender == blackBtn {
            changeBackgroundColor(color: .black)
        }else if sender == blueBtn {
            changeBackgroundColor(color: .blue)
        }else if sender == orangeBtn {
            changeBackgroundColor(color: .orange)
        }
    }
    
    @IBAction func tabSaveBtn(_ sender: Any) {
    }
    
    
}
