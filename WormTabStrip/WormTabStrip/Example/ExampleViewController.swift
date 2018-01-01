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
    var tabs:[UIViewController] = []
    let numberOfTabs = 10
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(netHex: 0x364756)
        setUpTabs()
        setUpViewPager()
    }
    
    func setUpTabs(){
        for i in 1...numberOfTabs {
            let vc = ViewController()
            tabs.append(vc)
        }
    }
    
    func setUpViewPager(){
        let frame =  CGRect(x: 0, y: 40, width: self.view.frame.size.width, height: self.view.frame.size.height - 40)
        let viewPager:WormTabStrip = WormTabStrip(frame: frame)
        self.view.addSubview(viewPager)
        viewPager.delegate = self
        viewPager.eyStyle.wormStyel = .BUBBLE
        viewPager.eyStyle.isWormEnable = true
        viewPager.eyStyle.spacingBetweenTabs = 15
        viewPager.eyStyle.dividerBackgroundColor = .red
        viewPager.eyStyle.tabItemSelectedColor = .yellow
        viewPager.currentTabIndex = 3
        viewPager.buildUI()
    }
    
    func WTSNumberOfTabs() -> Int {
        return numberOfTabs
    }
    
    func WTSTitleForTab(index: Int) -> String {
        if(index%4==0){
            return "really long and longer Tab \(index)"
        }
        return "Tab \(index)"
    }
    
    func WTSViewOfTab(index: Int) -> UIView {
        let view = tabs[index]
        return view.view
    }
    
    func WTSReachedLeftEdge(panParam: UIPanGestureRecognizer) {
        
    }
    
    func WTSReachedRightEdge(panParam: UIPanGestureRecognizer) {
        
    }
    
    
}
