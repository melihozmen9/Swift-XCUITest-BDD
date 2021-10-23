import XCTest

class XCUITestCase: XCTestCase {
    internal var calculatorApp: Screen!

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        setUpAlertHandler()
        calculatorApp = TestBuilder(XCUIApplication()).reset().launch()
    }

    override func tearDown() {
        super.tearDown()
    }

    private func setUpAlertHandler() {
        let allowButtonPredicate = NSPredicate(format: "label == 'Always Allow' || label == 'Allow'")

        _ = addUIInterruptionMonitor(withDescription: "Alert Handler") { (alert) -> Bool in
            let alertAllowButton = alert.buttons.matching(allowButtonPredicate).element.firstMatch
            if alertAllowButton.exists {
                alertAllowButton.tap()
                return true
            }
            return false
        }
    }
}
