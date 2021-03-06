//
//  Common.swift
//  ARKit_sample
//
//  Created by USER on 2018/03/23.
//  Copyright © 2018年 Hiliberate. All rights reserved.
//

import UIKit


struct SampleMenu {
    let title: String
    let storyBoadName: String
    //let viewController: UIViewController
    
    func getController() -> UIViewController {
        let storyboard = UIStoryboard(name: storyBoadName, bundle: nil)
        let controller:UIViewController = storyboard.instantiateViewController(withIdentifier: storyBoadName)
        controller.title = title
        return controller
    }
}


let menu = [
    SampleMenu(title:"Just Add Box", storyBoadName:"AddBox"),
    SampleMenu(title:"Plane Detective And Put Object", storyBoadName:"PlaneDetection"),
    SampleMenu(title:"AR Paint", storyBoadName:"Paint"),
    SampleMenu(title:"Put Picture", storyBoadName:"PutPicture"),
    SampleMenu(title:"Interact Content", storyBoadName:"InteractContent"),
    SampleMenu(title:"AR Measure", storyBoadName:"Measure"),
    SampleMenu(title:"AR Text", storyBoadName:"Text"),
]

func getController(viewControllerName:String, title:String) -> UIViewController {
    let storyboard = UIStoryboard(name: viewControllerName, bundle: nil)
    guard let controller = storyboard.instantiateInitialViewController() else {fatalError()}
    controller.title = title
    return controller
}
