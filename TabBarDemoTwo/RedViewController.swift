//
//  RedViewController.swift
//  TabBarDemoTwo
//
//  Created by Charlie Hieger on 11/1/16.
//  Copyright © 2016 Charlie Hieger. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func didTapRedButton(_ sender: UIButton) {


        UIView.animate(withDuration: 0.5) { 
            sender.transform = sender.transform.translatedBy(x: 0, y: -200)
        }
    }



}
