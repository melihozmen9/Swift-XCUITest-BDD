import XCTest
import Calculator_UI

final class AddNumberTests: XCUITestCase {

    func testRercordPlayTemp() {
        let app = XCUIApplication()
        app.launch()
        let staticText5 = app.staticTexts["5"]
        staticText5.tap()
        app.staticTexts["+"].tap()
        let staticText6 = app.staticTexts["1"]
        staticText6.tap()
        app.staticTexts["="].tap()
    }
    
    func testAddTwoNumbers() {
        whenAddTwoNumbers()
        
        Then("Addition result shown") {
            XCTAssert(calculatorApp
                        .on(screen: Home.self)
                        .isDisplayingResult
            )
        }
    }
    
    func testAddTwoNumbersWithParam() {
        When("Add two numbers") {
            calcTwoNumbersWithParam(firstNumber: "3",
                                    calculationType: "+",
                                    secondNumber: "4")
        }
        
        Then("Addition result shown") {
            XCTAssert(calculatorApp
                        .on(screen: Home.self)
                        .isDisplayingResult
            )
        }
    }
    
    private func whenAddTwoNumbers() {
        When("Add Two Numbers") {
            calculatorApp
                        .on(screen: Home.self)
                        .addTwoNumbers()
        }
    }
    
    private func calcTwoNumbersWithParam(firstNumber: String, calculationType: String, secondNumber: String) {
            calculatorApp
                        .on(screen: Home.self)
                        .calcTwoNumbers(firstNumber:firstNumber,
                                        calculationType: "+",
                                        secondNumber:secondNumber)
    }
    

}

