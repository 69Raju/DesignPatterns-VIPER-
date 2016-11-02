//
//  RootWireframe.swift
//  VIPER Demo
//
//  Created by Nagaraju on 10/21/16.
//  Copyright © 2016 Nagaraju. All rights reserved.
//

import UIKit

class RootWireframe: NSObject {
    
    func showRootViewController(viewController: UIViewController, inWindow: UIWindow) {
        let navigationController = inWindow.rootViewController as! UINavigationController
        navigationController.viewControllers = [viewController]
    }

}
