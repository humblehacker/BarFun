//
//  RootViewController.swift
//  BarFun
//
//  Created by David Whetstone on 1/11/16.
//  Copyright © 2016 humblehacker. All rights reserved.
//

import UIKit
import SnapKit

class RootViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()

        title = "Root View Controller"

        navigationController?.navigationBar.layer.borderColor = UIColor.cyanColor().CGColor
        navigationController?.navigationBar.layer.borderWidth = 1.0

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Present", style: .Plain, target: self, action: "present")

        addInnerView()
        print("rootView: \(view)")
    }

    func addInnerView()
    {
        let innerView = UIView()
        innerView.backgroundColor = UIColor.lightGrayColor()
        view.addSubview(innerView)

        innerView.snp_makeConstraints
        {
            make in
            make.edges.equalTo(self.view).inset(UIEdgeInsetsMake(10, 10, 10, 10))
        }
    }

    func present()
    {
        let nc = UINavigationController(rootViewController: FunViewController())
        presentViewController(nc, animated: true, completion: nil)
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle
    {
        return .LightContent
    }
}

