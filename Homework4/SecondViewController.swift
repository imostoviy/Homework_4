//
//  SecondViewController.swift
//  Homework4
//
//  Created by Мостовий Ігор on 15.11.18.
//  Copyright © 2018 Мостовий Ігор. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var selfmadeSlider: UISlider!
    var selfmadeView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        selfmadeSlider = UISlider(frame: CGRect(x: 40, y: 180, width: self.view.frame.width - 2 * 40, height: 20))
        selfmadeSlider.minimumValue = 0
        selfmadeSlider.maximumValue = 1
        selfmadeSlider.value = 0
        self.view.addSubview(selfmadeSlider)
        selfmadeSlider.addTarget(self, action: #selector(handleSelfmadeSliderChangeValue), for: .valueChanged)
        selfmadeView = UIView(frame: CGRect(x: 40, y: 210, width: self.view.frame.width - 2 * 40, height: 60))
        selfmadeView.backgroundColor = .black
        selfmadeView.alpha = CGFloat(selfmadeSlider.value)
        selfmadeView.layer.cornerRadius = 7
        self.view.addSubview(selfmadeView)
        // Do any additional setup after loading the view.
    }
    
    @objc func handleSelfmadeSliderChangeValue() {
        selfmadeView.alpha = CGFloat(selfmadeSlider.value)
        selfmadeView.layer.cornerRadius = 10 * CGFloat(selfmadeSlider.value)
    }
    
    

}
