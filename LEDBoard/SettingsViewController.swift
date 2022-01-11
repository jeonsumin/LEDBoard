//
//  SettingsViewController.swift
//  LEDBoard
//
//  Created by Terry on 2021/12/23.
//

import UIKit

//프로토콜 델리게이트를 통해 View 간 데이터 전달하기
protocol LEDBaordSettingDelegate: AnyObject{
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor)
}

class SettingsViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var yellowbtn: UIButton!
    @IBOutlet weak var purplebtn: UIButton!
    @IBOutlet weak var orangeBtn: UIButton!
    @IBOutlet weak var blueBtn: UIButton!
    @IBOutlet weak var blackBtn: UIButton!
    @IBOutlet weak var greenBtn: UIButton!
    
    // 데이터를 전달하기 위한 view에서 delegate 선언
    weak var delegate: LEDBaordSettingDelegate?
    var ledText: String?
    var textColor: UIColor = .yellow
    var backgroundColor:UIColor = .black
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configueView()
    }
    private func configueView(){
        if let ledText = ledText {
            textField.text = ledText
        }
        changeTextColor(color: textColor)
        changeBackgroundColor(color: backgroundColor)
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
            textColor = .yellow
        }else if sender == purplebtn {
            changeTextColor(color: .purple)
            textColor = .purple
        }else if sender == greenBtn {
            changeTextColor(color: .green)
            textColor = .green
        }
    }
    
    @IBAction func tapBackgroundColorBtn(_ sender: UIButton) {
        if sender == blackBtn {
            changeBackgroundColor(color: .black)
            backgroundColor = .black
        }else if sender == blueBtn {
            changeBackgroundColor(color: .blue)
            backgroundColor = .blue
        }else if sender == orangeBtn {
            changeBackgroundColor(color: .orange)
            backgroundColor = .orange
        }
    }
    
    @IBAction func tabSaveBtn(_ sender: UIButton) {
        //Action에서 Delegate 데이터 담기
        delegate?.changedSetting(text: textField.text!,
                                 textColor: textColor,
                                 backgroundColor: backgroundColor)
        navigationController?.popViewController(animated: true)
    }
    
    
}
