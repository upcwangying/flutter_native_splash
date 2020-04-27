// Android-related templates
const String androidColorsXml = '''
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <color name="splash_color">#2196F3</color>
</resources>
''';

const String androidLaunchBackgroundItemXml = '''
    <item>
        <bitmap android:gravity="center" android:src="@drawable/splash" />
    </item>
''';

const String androidLaunchBackgroundXml = '''
<?xml version="1.0" encoding="utf-8"?>
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:drawable="@color/splash_color" />

  $androidLaunchBackgroundItemXml
</layer-list>
''';

const String androidLaunchBackgroundItemXmlFill = '''
    <item>
        <bitmap android:gravity="fill" android:src="@drawable/splash" />
    </item>
''';

const String androidLaunchBackgroundXmlFill = '''
<?xml version="1.0" encoding="utf-8"?>
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:drawable="@color/splash_color" />

  $androidLaunchBackgroundItemXmlFill
</layer-list>
''';

const String androidStylesItemXml = '''
        <item name="android:windowFullscreen">true</item>
''';

const String androidStylesXml = '''
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <style name="LaunchTheme" parent="@android:style/Theme.Black.NoTitleBar">
        <item name="android:windowBackground">@drawable/launch_background</item>
    $androidStylesItemXml
    </style>
</resources>
''';

const String androidMainActivityJavaImportLines1 = 'import android.os.Build;';
const String androidMainActivityJavaImportLines2 =
    'import android.view.ViewTreeObserver;';
const String androidMainActivityJavaImportLines3 =
    'import android.view.WindowManager;';

const String androidMainActivityJavaLines2WithStatusBar = '''
    boolean flutter_splash_countdown = true;
    int originalStatusBarColor = 0;
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
        originalStatusBarColor = getWindow().getStatusBarColor();
        getWindow().setStatusBarColor({{{primaryColorDark}}});
    }
    int originalStatusBarColorFinal = originalStatusBarColor;
''';

const String androidMainActivityJavaLines3 = '''
    ViewTreeObserver vto = getFlutterView().getViewTreeObserver();
    vto.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
      @Override
      public void onGlobalLayout() {
        getFlutterView().getViewTreeObserver().removeOnGlobalLayoutListener(this);
        getWindow().clearFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
          getWindow().setStatusBarColor(originalStatusBarColorFinal);
        }
      }
    });
''';

const String androidMainActivityKotlinImportLines1 = 'import android.os.Build';
const String androidMainActivityKotlinImportLines2 =
    'import android.view.ViewTreeObserver';
const String androidMainActivityKotlinImportLines3 =
    'import android.view.WindowManager';

const String androidMainActivityKotlinLines2WithStatusBar = '''
    val flutter_splash_countdown = true
    var originalStatusBarColor = 0
    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
        originalStatusBarColor = window.statusBarColor
        window.statusBarColor = {{{primaryColorDark}}}.toInt()
    }
    val originalStatusBarColorFinal = originalStatusBarColor
''';

const String androidMainActivityKotlinLines3 = '''
    val vto = flutterView.viewTreeObserver
    vto.addOnGlobalLayoutListener(object : ViewTreeObserver.OnGlobalLayoutListener {
      override fun onGlobalLayout() {
        flutterView.viewTreeObserver.removeOnGlobalLayoutListener(this)
        window.clearFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
          window.statusBarColor = originalStatusBarColorFinal
        }
      }
    })
''';

// iOS-related templates
const String iOSLaunchScreenStoryboardContent = '''
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<document type="com.apple.InterfaceBuilder3.CocoaTouch.Storyboard.XIB" version="3.0" toolsVersion="12121" systemVersion="16G29" targetRuntime="iOS.CocoaTouch" propertyAccessControl="none" useAutolayout="YES" launchScreen="YES" colorMatched="YES" initialViewController="01J-lp-oVM">
    <dependencies>
        <deployment identifier="iOS"/>
        <plugIn identifier="com.apple.InterfaceBuilder.IBCocoaTouchPlugin" version="12089"/>
    </dependencies>
    <scenes>
        <!--View Controller-->
        <scene sceneID="EHf-IW-A2E">
            <objects>
                <viewController id="01J-lp-oVM" sceneMemberID="viewController">
                    <layoutGuides>
                        <viewControllerLayoutGuide type="top" id="Ydg-fD-yQy"/>
                        <viewControllerLayoutGuide type="bottom" id="xbc-2k-c8Z"/>
                    </layoutGuides>
                    <view key="view" contentMode="scaleToFill" id="Ze5-6b-2t3">
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
                            <imageView opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center" image="LaunchImage" translatesAutoresizingMaskIntoConstraints="NO" id="YRO-k0-Ey4">
                            </imageView>
                        </subviews>
                        <color key="backgroundColor" red="1" green="1" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
                        <constraints>
                            <constraint firstItem="YRO-k0-Ey4" firstAttribute="centerX" secondItem="Ze5-6b-2t3" secondAttribute="centerX" id="1a2-6s-vTC"/>
                            <constraint firstItem="YRO-k0-Ey4" firstAttribute="centerY" secondItem="Ze5-6b-2t3" secondAttribute="centerY" id="4X2-HB-R7a"/>
                        </constraints>
                    </view>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="iYj-Kq-Ea1" userLabel="First Responder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="53" y="375"/>
        </scene>
    </scenes>
    <resources>
        <image name="LaunchImage" width="168" height="185"/>
    </resources>
</document>
''';

String iOSInfoPlistLines = '''
	<key>UIStatusBarHidden</key>
	<true/>
''';

String iOSAppDelegateObjectiveCLines = '''
    int flutter_splash_countdown = 1;
    UIApplication.sharedApplication.statusBarHidden = false;
''';

String iOSAppDelegateSwiftLines = '''
    var flutter_splash_countdown = 1
    UIApplication.shared.isStatusBarHidden = false
''';
