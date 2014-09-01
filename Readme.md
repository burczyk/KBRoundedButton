#KBRoundedButton
allows you to create beautiful rounded rect button with dynamic colors and activity indicator, completely in Interface Builder.

![Animation](https://raw.githubusercontent.com/burczyk/KBRoundedButton/master/assets/animation.gif)

Button's corners alre always rounded to half of it's height.

##Installation
`KBRoundedButton` is available via `CocoaPods`.
To use it in your app simply add:

```
pod 'KBRoundedButton'
```


##Setting colors
You can set colors for each state of the button in both code and Interface builder. Both background colors and title colors are supported. Set of colors:

```objective-c
@property (nonatomic, strong) UIColor *backgroundColorForStateNormal;
@property (nonatomic, strong) UIColor *backgroundColorForStateSelected;
@property (nonatomic, strong) UIColor *backgroundColorForStateHighlighted;
@property (nonatomic, strong) UIColor *backgroundColorForStateSelectedAndHighlighted;
@property (nonatomic, strong) UIColor *backgroundColorForStateDisabled;

@property (nonatomic, strong) UIColor *titleColorForStateNormal;
@property (nonatomic, strong) UIColor *titleColorForStateSelected;
@property (nonatomic, strong) UIColor *titleColorForStateHighlighted;
@property (nonatomic, strong) UIColor *titleColorForStateSelectedAndHighlighted;
@property (nonatomic, strong) UIColor *titleColorForStateDisabled;
```

Setting them in IB is very easy: all you have to do is to set a class of your button to `KBRoundedButton` and `User Defined Runtime Attributes` for a subset of properties from above.

![Animation](https://raw.githubusercontent.com/burczyk/KBRoundedButton/master/assets/IB.png)

Colors are set by creating an `UIImage` of 1x1 size in given color and placing it as a `backgroundImage` of button.

##Setting shadow
`KBRoundedButton` has a property 
```objective-c
@property (nonatomic, assign) BOOL shadowEnabled;
``` 
which can be also set in IB and enables bottom shadow for a button. Due to the fact that internal implementation uses `CALayer`'s `cornerRadius` property altogether with `clipsToBounds` it was unable to use native shadow. Method 
```objective-c
- (void)addBottomShadow
``` 
creates a separate view with size of the button and places it below the button in view hierarchy.

##Activity Indicator
`KBRoundedButton`'s last property 
```objective-c
@property (nonatomic, assign) BOOL working;
``` 
displays activity indicator when set to `YES` and restores original title when set to `NO`. See `Log in` button for a realtime example.

##License
`KBRoundedButton ` is under `MIT license`. See `LICENSE` file for more info.