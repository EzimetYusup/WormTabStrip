# Worm Tab Strip
Worm Tab Strip is inspired by android [SmartTabStrip](https://github.com/ogaclejapan/SmartTabLayout), android  view pager like library for iOS written in swift.

Basically it was build up by two scroll view, one at the top for holding all the tabs, one for content view for each tab.
frame based, not auto layout constraint based.
##there are two styles of worm tab strip:

* Bubble style:

![alt text](https://github.com/EzimetYusup/WormTabStrip/blob/develop/bublle.gif) 

* Line style:

![alt text](https://github.com/EzimetYusup/WormTabStrip/blob/develop/line.gif)

## Current example build environment
XCode 7.3.1 & 8.1 beta 4

Swift 2.3

## Installation

#### CocoaPods 
coming soon

#### Manually
1. Download and drop ```WormTabStrip.swift``` and ```WormTabStripButton.swift``` in your project.  
2. Congratulations!  

#### Looking for swift 3?
checkout brach swift3 

## Usage example
implement the [WormTabStripDelegate](https://github.com/EzimetYusup/WormTabStrip/blob/master/WormTabStrip/WormTabStrip/WormLib/WormTabStrip.swift#L11) in your UIViewController then do
```swift
let frame =  CGRect(x: 0, y: 40, width: self.view.frame.size.width, height: self.view.frame.size.height - 40)
let viewPager:WormTabStrip = WormTabStrip(frame: frame)
viewPager.delegate = self
self.view.addSubview(viewPager)
viewPager.buildUI()
```
#### Need custom style? 

checkout  [WormTabStripStylePropertyies] (https://github.com/EzimetYusup/WormTabStrip/blob/master/WormTabStrip/WormTabStrip/WormLib/WormTabStrip.swift#L32) struct, give your custom style 
```swift 
viewPager.eyStyle.wormStyel = .LINE
viewPager.eyStyle.isWormEnable = false
viewPager.eyStyle.spacingBetweenTabs = 15
viewPager.eyStyle.dividerBackgroundColor = .red
viewPager.eyStyle.tabItemSelectedColor = .yellow
...
```        
before you before you call 
```swift
viewPager.buildUI() 
```



## Apps using worm tab strip:
 [Bagdax News](https://itunes.apple.com/cn/app/baghdash-twry/id875137241?mt=8),
screen shots:

![alt text](https://github.com/EzimetYusup/WormTabStrip/blob/develop/appUsingWorm.gif)

