//
//  TabBarViewController.swift
//  TabBarDemoTwo
//
//  Created by Charlie Hieger on 11/1/16.
//  Copyright © 2016 Charlie Hieger. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {


    @IBOutlet weak var containerView: UIScrollView!

    var redViewController: UIViewController!
    var blueViewController: UIViewController!
    var greenViewController: UIViewController!


    override func viewDidLoad() {
        super.viewDidLoad()

        containerView.contentSize = CGSize(width: containerView.frame.size.width * 3, height: containerView.frame.size.height)

        let main = UIStoryboard(name: "Main", bundle: nil)

        redViewController = main.instantiateViewController(withIdentifier: "RedViewController")



        blueViewController = main.instantiateViewController(withIdentifier: "BlueViewController")

        blueViewController.view.frame = containerView.frame

        greenViewController = main.instantiateViewController(withIdentifier: "GreenViewController")

        greenViewController.view.frame = containerView.frame



         redViewController.view.frame = containerView.bounds

        containerView.addSubview(redViewController.view)

        blueViewController.view.frame = containerView.bounds
        blueViewController.view.frame.origin.x = containerView.frame.size.width
        containerView.addSubview(blueViewController.view)

        greenViewController.view.frame = containerView.bounds
        greenViewController.view.frame.origin.x = containerView.frame.size.width * 2
        containerView.addSubview(greenViewController.view)

    }


    @IBAction func didTapRedButton(_ sender: AnyObject) {
        containerView.setContentOffset(CGPoint(x: 0, y: 0) , animated: true)
    }


    @IBAction func didTapBlueButton(_ sender: AnyObject) {
        containerView.setContentOffset(CGPoint(x: containerView.frame.size.width, y: 0) , animated: true)
    }

    @IBAction func didTapGreenButton(_ sender: AnyObject) {
        containerView.setContentOffset(CGPoint(x: containerView.frame.size.width * 2, y: 0) , animated: true)
    }







    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
}
