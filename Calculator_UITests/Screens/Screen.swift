import XCTest

enum UIState: String {
    case exist = "exists == true"
    case notExist = "exists == false"
    case hittable = "isHittable == true"
}

class Screen {
    internal var app: XCUIApplication

    required init(_ app: XCUIApplication) {
        self.app = app
    }

    func on<T: Screen>(screen: T.Type) -> T {
        let nextScreen: T

        if self is T {
            nextScreen = self as! T
        } else {
            nextScreen = screen.init(app)
        }
        return nextScreen
    }

    internal func tap(_ element: XCUIElement) {
        waitFor(element, status: .hittable)
        element.tap()
    }

    internal func tap(text: String) {
        let element = app.staticTexts[text]
        waitFor(element, status: .hittable)
        element.tap()
    }

    internal func typeInto(_ element: XCUIElement, text: String) {
        waitFor(element, status: .exist)
        element.typeText(text)
    }

    internal func tapAndTypeInto(_ element: XCUIElement, text: String) {
        tap(element)
        typeInto(element, text: text)
    }

    internal func labelOf(_ element: XCUIElement) -> String {
        waitFor(element, status: .exist)
        return element.label
    }

    internal func exists(_ element: XCUIElement, timeout: Int = 12) -> Bool {
        let expectation = XCTNSPredicateExpectation(predicate: NSPredicate(format: UIState.exist.rawValue), object: element)
        let result = XCTWaiter.wait(for: [expectation], timeout: TimeInterval(timeout))

        return (result != .timedOut)
    }

    internal func swipeUp() {
        app.windows["iPhoneWindow"].swipeUp()
    }

    private func waitFor(_ element: XCUIElement, status: UIState, timeout: Int = 12) {
        let expectation = XCTNSPredicateExpectation(predicate: NSPredicate(format: status.rawValue), object: element)
        let result = XCTWaiter.wait(for: [expectation], timeout: TimeInterval(timeout))

        if(result == .timedOut) {
            XCTFail(expectation.description)
        }
    }
}

