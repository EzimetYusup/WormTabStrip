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
        let frame =  CGRect(x: 0, y: 40, width: self.view.frame.size.width, height: self.view.frame.size.height - 40)
        let viewPager:WormTabStrip = WormTabStrip(frame: frame)
        self.view.addSubview(viewPager)
        viewPager.delegate = self
        viewPager.eyStyle.wormStyel = .BUBBLE
        viewPager.eyStyle.isWormEnable = true
        viewPager.eyStyle.spacingBetweenTabs = 15
        viewPager.eyStyle.dividerBackgroundColor = .red
        viewPager.eyStyle.tabItemSelectedColor = .yellow
        
        viewPager.buildUI()
    }
    
    func WTSnumberOfTab() -> Int {
        return 10
    }
    
    func WTStitlesOfTab(index: Int) -> String {
        return "Tab \(index)"
    }
    
    func WTSviewOfTab(index: Int) -> UIView {
    
        let view:ViewController = ViewController()
        if index%2 == 0 {
            view.view.backgroundColor = UIColor.white
        }else{
            view.view.backgroundColor = UIColor.gray
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
    
    
}
