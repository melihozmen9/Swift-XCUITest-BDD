import XCTest
import Calculator_UI

final class MultiplyNumberTests: XCUITestCase {
    
    func testMultiplyTwoNumbersWithParam() {
        When("Multiply two numbers") {
            calcTwoNumbersWithParam(firstNumber: "3",
                                    calculationType: "*",
                                    secondNumber: "4")
        }
        
        Then("Multiply result shown") {
            XCTAssert(calculatorApp
                        .on(screen: Home.self)
                        .isDisplayingResult
            )
        }
    }
    
    private func calcTwoNumbersWithParam(firstNumber: String, calculationType: String, secondNumber: String) {
            calculatorApp
                        .on(screen: Home.self)
                        .calcTwoNumbers(firstNumber:firstNumber,
                                        calculationType: "*",
                                        secondNumber:secondNumber)
    }
    

}


