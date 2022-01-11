//
//  ViewController.swift
//  LEDBoard
//
//  Created by Terry on 2021/12/23.
//

import UIKit

                                        //데이터를 받을 View에서 Delegate를 채택 
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
    
    //delegate 채택 후 필수 메소드 구현
    func changedSetting(text: String?, textColor: UIColor, backgroundColor: UIColor) {
        if let text = text {
            contentsLb.text = text
        }
        contentsLb.textColor = textColor
        view.backgroundColor = backgroundColor
    }

}

