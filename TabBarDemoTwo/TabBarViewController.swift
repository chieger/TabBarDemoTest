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

        // Set the scroll view content size
        // In this case, 3 screens, so 3 x screen width
        containerView.contentSize = CGSize(width: containerView.frame.size.width * 3, height: containerView.frame.size.height)

        // reference the main storyboard
        let main = UIStoryboard(name: "Main", bundle: nil)

        // Instantiate the view controllers
        redViewController = main.instantiateViewController(withIdentifier: "RedViewController")
        blueViewController = main.instantiateViewController(withIdentifier: "BlueViewController")
        greenViewController = main.instantiateViewController(withIdentifier: "GreenViewController")

        // Add the view from the red view controller to the container view
        redViewController.view.frame = containerView.bounds
        containerView.addSubview(redViewController.view)

        // Add view from blue view controller
        // offset origin to place to right of red view
        blueViewController.view.frame = containerView.bounds
        blueViewController.view.frame.origin.x = containerView.frame.size.width
        containerView.addSubview(blueViewController.view)

        // Add view from blue view controller
        // offset origin to place to right of blue view
        greenViewController.view.frame = containerView.bounds
        greenViewController.view.frame.origin.x = containerView.frame.size.width * 2
        containerView.addSubview(greenViewController.view)

    }

    @IBAction func didTapRedButton(_ sender: AnyObject) {
        // scroll to content offset of redview
        containerView.setContentOffset(CGPoint(x: 0, y: 0) , animated: true)
    }

    @IBAction func didTapBlueButton(_ sender: AnyObject) {
        // scroll to content offset of blue view
        containerView.setContentOffset(CGPoint(x: containerView.frame.size.width, y: 0) , animated: true)
    }

    @IBAction func didTapGreenButton(_ sender: AnyObject) {
        // scroll to content offset of green view
        containerView.setContentOffset(CGPoint(x: containerView.frame.size.width * 2, y: 0) , animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
