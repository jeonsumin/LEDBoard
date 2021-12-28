//
//  ViewController.swift
//  LEDBoard
//
//  Created by Terry on 2021/12/23.
//

import UIKit

class ViewController: UIViewController ,LEDBaordSettingDelegate {
    
    

    @IBOutlet weak var contentsLb: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        contentsLb.text = "전광판"
        contentsLb.textColor = .yellow
    }
    //세그웨이로 설정하였기 때문에 prepare 사용
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingViewController = segue.destination as? SettingsViewController {
            settingViewController.delegate = self
            settingViewController.ledText = contentsLb.text
            settingViewController.textColor = contentsLb.textColor
            settingViewController.backgroundColor = view.backgroundColor ?? .black
        }
    }
    
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor) {
        if let text = text {
            contentsLb.text = text
        }
        contentsLb.textColor = textColor
        view.backgroundColor = backgroundColor
    }

}

