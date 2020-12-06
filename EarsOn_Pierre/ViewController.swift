//
//  ViewController.swift
//  EarsOn_Pierre
//
//  Created by PIERRE COSTIN on 2020-11-05.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let hostingView = UIHostingController(rootView: Home())
        
        addChild(hostingView)
        hostingView.view.frame = view.frame
        view.addSubview(hostingView.view)
        hostingView.didMove(toParent: self)
    }
    
}
