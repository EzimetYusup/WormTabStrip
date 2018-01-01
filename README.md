# Worm Tab Strip
Worm Tab Strip is inspired by android [SmartTabStrip](https://github.com/ogaclejapan/SmartTabLayout), android  view pager like library for iOS written in swift.

Basically it was build up by two scroll view, one at the top for holding all the tabs, one for content view for each tab.
frame based, not auto layout constraint based.

[![Swift Version][swift-imag-2.3]][swift-url]
[![Swift Version][swift-image]][swift-url]
[![License][license-image]][license-url]
[![Platform](https://img.shields.io/cocoapods/p/LFAlertController.svg?style=flat)](http://cocoapods.org/pods/LFAlertController)

## there are two styles of worm tab strip:

* Bubble style:

![alt text](https://github.com/EzimetYusup/WormTabStrip/blob/develop/bublle.gif) 

* Line style:

![alt text](https://github.com/EzimetYusup/WormTabStrip/blob/develop/line.gif)

## Current example build environment
XCode 9.2

Swift 4

## Installation

#### CocoaPods 
coming soon

#### Manually
1. Download and drop ```WormTabStrip.swift``` and ```WormTabStripButton.swift``` in your project.  
2. Congratulations!  

#### Looking for swift 2.3?
checkout brach [swift2.3](https://github.com/EzimetYusup/WormTabStrip/tree/swift2.3)

## Usage example
implement the [WormTabStripDelegate](https://github.com/EzimetYusup/WormTabStrip/blob/master/WormTabStrip/WormTabStrip/WormLib/WormTabStrip.swift#L11) in your UIViewController then do
```swift
let frame =  CGRect(x: 0, y: 40, width: self.view.frame.size.width, height: self.view.frame.size.height - 40)
let viewPager:WormTabStrip = WormTabStrip(frame: frame)
viewPager.delegate = self
viewPager.eyStyle.wormStyel = .BUBBLE
viewPager.eyStyle.isWormEnable = true
viewPager.eyStyle.spacingBetweenTabs = 15
viewPager.eyStyle.dividerBackgroundColor = .red
viewPager.eyStyle.tabItemSelectedColor = .yellow
//default selected tab
viewPager.currentTabIndex = 3
//center the selected tab
viewPager.shouldCenterSelectedWorm = true
viewPager.buildUI()
```
## Need custom style? 

checkout  [WormTabStripStylePropertyies](https://github.com/EzimetYusup/WormTabStrip/blob/master/WormTabStrip/WormTabStrip/WormLib/WormTabStrip.swift#L32) struct, give your custom style 
```swift 
viewPager.eyStyle.wormStyel = .LINE
viewPager.eyStyle.isWormEnable = false
viewPager.eyStyle.spacingBetweenTabs = 15
viewPager.eyStyle.dividerBackgroundColor = .red
viewPager.eyStyle.tabItemSelectedColor = .yellow
...
```        
before you  you call 
```swift
viewPager.buildUI() 
```
### Available customization properties 
|Property|Description|
|:--|:--|
|wormStyel|style of the worm bubble or line|
|kHeightOfWorm| worm height for line style|
|kHeightOfWormForBubble| worm height for bubble style|
|kHeightOfDivider| divider height between top scrollview and conent scrollview|
|kHeightOfTopScrollView| Top scrollView height which hold all tabs|
|kMinimumWormHeightRatio | minimum worm height Ratio, it should be less than 1|
|kPaddingOfIndicator | Padding of tab button, from text to button each side|
|spacingBetweenTabs | space between tab buttons|
|isWormEnable| boolean, if false it will not animate worm|
|tabItemDefaultFont| font for unSelected tab|
|tabItemSelectedFont| font for selected tab|
|tabItemDefaultColor| text color for unSelected tab|
|tabItemSelectedColor| text color for selected tab|
|WormColor| color for worm|
|topScrollViewBackgroundColor | back ground color of top scroll view which hold all tabs|
|contentScrollViewBackgroundColor| back ground color fo content scroll view|
|dividerBackgroundColor | back ground color of divider view between top scroll view and content scroll view|


## Apps using worm tab strip:
 [Bagdax News](https://itunes.apple.com/cn/app/baghdash-twry/id875137241?mt=8),
screen shots:

![alt text](https://github.com/EzimetYusup/WormTabStrip/blob/develop/appUsingWorm.gif)

## Contribute

We would love for you to contribute to **WormTabStrip**, check the ``LICENSE`` file for more info.

## Meta

Ezimet Yusup – [Github](https://github.com/EzimetYusup) –

Distributed under the MIT license. See ``LICENSE`` for more information.


[swift-image]:https://img.shields.io/badge/swift-3.0-orange.svg
[swift-imag-2.3]:https://img.shields.io/badge/swift-2.3-orange.svg
[swift-url]: https://swift.org/
[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: https://github.com/EzimetYusup/WormTabStrip/blob/master/LICENSE
[travis-image]: https://img.shields.io/travis/dbader/node-datadog-metrics/master.svg?style=flat-square
[travis-url]: https://travis-ci.org/dbader/node-datadog-metrics
[codebeat-image]: https://codebeat.co/badges/c19b47ea-2f9d-45df-8458-b2d952fe9dad
[codebeat-url]: https://codebeat.co/projects/github-com-vsouza-awesomeios-com
