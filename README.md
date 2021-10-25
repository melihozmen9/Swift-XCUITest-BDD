# XCUITest with Xcode and Swift

"Software Testing Bootcamp" is a community of people interested in software testing. We record the weekly webinars that we organize and publish them on Youtube. For more information -> https://testingbootcamp.com/

**Youtube Webinar Video:**

https://youtu.be/fMQZubJgRAc

![image](https://user-images.githubusercontent.com/89974862/137537135-9bc84d3a-09bc-4767-bbe1-21bd2f3d9b27.png)

------------

**Getting Started:**

This document will help you to debug your iOS App with Xcode and Run your test scenarios with CI/CD integrations.


![image](https://user-images.githubusercontent.com/89974862/138561502-9707a7ea-091c-40ba-8b44-db235a686d6e.png)

----------

**Example App:**

Example App is a calculator app project with Swift. That App will be under test with XCUITest within the same Xcode project.

https://github.com/Shubham0812/Calculator_UI

![image](https://user-images.githubusercontent.com/89974862/138561626-8c9fcdc8-0418-446b-981c-35a0a5926ee6.png)

----------

**BDD support in scenarios:**

![image](https://user-images.githubusercontent.com/89974862/138561748-95e4b702-cf78-4407-800a-4f083c607017.png)

----------

**Project Structure:**

![image](https://user-images.githubusercontent.com/89974862/138599825-bb09e4d8-16f8-4f37-9738-48ff2cc94975.png)

**Warning-1:** iOS deployment target for the XCUITest must be the same with target App's.

**Warning-2:** If you have got an error while running this sample project click Product-> Clean build folder, Product -> Clean Test results.. and try again to run tests.

**Warning-3:** If you have got an error about app signing open Sİgning and capabilities to set your Apple Development Team and certificate

----------

**Test Navigator:**

![image](https://user-images.githubusercontent.com/89974862/138599889-30f256bc-566c-4354-af40-d0092291fd42.png)

----------

**Test Recording and running:**

Click any test function and the Recording option will be enabled at the bottom. Click it to start generating your test scripts.

Click the play button that's left on the class name or function name to start your test run.

![image](https://user-images.githubusercontent.com/89974862/138609279-61ad9b58-e28e-4f8e-ba11-4b85945d9e46.png)

----------

**Common IDB Commands**

IDB is a command-line utility to access and manage your iOS simulators or real devices. For more information -> https://fbidb.io/

Open the terminal window and run the following IDB commands with parameters if you need them.

Get help

    Idb -h
    
  
List all available simulators and connected iOS devices

    Idb list-targets
    
  
Open specified simulator/real device with UDID number

    idb boot YOUR_DEVICE_UDID
    
  
List installed application on the target device

    idb list-apps --udid YOUR_DEVICE_UDID
    

Launch the example Calculator application on the target device

    Idb launch com.shubham-iosdev.Calculator-UI
    

Record a video on the target device

    idb record video --udid YOUR_DEVICE_UDID --json /Users/YOUR_USER/Downloads/recordingvideo.mp4
    

Take a screenshot of the target device

    idb screenshot --udid YOUR_DEVICE_UDID --json /Users/YOUR_USER/Downloads/capturescreenshot.png
    
  
View logs and processes on the target device  

    idb log --udid YOUR_DEVICE_UDID
  
  ----------
  
  **Start tests from Terminal window or CI/CD tools :**
  
  Enter the project folder from the terminal and run the following example code. You can change your device's iOS version and device name.
  
      xcodebuild -project Calculator_UI.xcodeproj/ -scheme Calculator_UI -destination 'platform=iOS Simulator,OS=15.0,name=iPhone 13 Pro' clean build test


  Example Jenkins shell command
  
  ![image](https://user-images.githubusercontent.com/89974862/138609137-e027ab4c-0a4f-4574-b577-b1ac9850f75b.png)

  
  ----------

**Helpful Docs:**

https://developer.apple.com/documentation/xctest

https://developer.apple.com/documentation/xctest/user_interface_tests

https://brew.sh/index_tr

https://www.python.org/downloads/

https://github.com/facebook/idb

https://developer.apple.com/xcode/resources/

https://www.jenkins.io/
