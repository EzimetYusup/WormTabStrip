//
//  TestViewController.swift
//  EYViewPager
//
//  Created by Ezimet Yusuf on 10/16/16.
//  Copyright © 2016 ww.otkur.biz. All rights reserved.
//

import Foundation
import UIKit

class ExampleViewController: UIViewController,WormTabStripDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(netHex: 0x364756)
        
        let viewPager:WormTabStrip = WormTabStrip(frame: CGRectMake(0, 40, self.view.frame.size.width, self.view.frame.size.height-40))
        viewPager.delegate = self
//        viewPager.eyStyle.topScrollViewBackgroundColor = UIColor(netHex: 0x364756)
        self.view.addSubview(viewPager)
        
        viewPager.buildUI()
    }
    
    func WTSnumberOfTab() -> Int {
        return 5
    }
    
    func WTStitlesOfTab(index: Int) -> String {
        return "Tab \(index)"
    }
    
    func WTSviewOfTab(index: Int) -> UIView {
    
        let view:ViewController = ViewController()
        if index%2 == 0 {
            view.view.backgroundColor = UIColor.whiteColor()
        }else{
            view.view.backgroundColor = UIColor.grayColor()
        }
        //        if index == 2 || index == 5{
        //            view.view.backgroundColor = UIColor.redColor()
        //            
        //        }
        
        
        return view.view
        
        
        
        
    }
    
    func WTSgotLeftEdge(panParam: UIPanGestureRecognizer) {
        
    }
    
    func WTSgotRightEdge(panParam: UIPanGestureRecognizer) {
        
    }
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
}