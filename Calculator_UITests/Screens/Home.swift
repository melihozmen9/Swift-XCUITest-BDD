import XCTest

final class Home: Screen {
    private lazy var oneButton = app.staticTexts["1"]
    private lazy var twoButton = app.staticTexts["2"]
    private lazy var threeButton = app.staticTexts["3"]
    private lazy var fourButton = app.staticTexts["4"]
    private lazy var fiveButton = app.staticTexts["5"]
    private lazy var sixButton = app.staticTexts["6"]
    private lazy var sevenButton = app.staticTexts["7"]
    private lazy var eightButton = app.staticTexts["8"]
    private lazy var nineButton = app.staticTexts["9"]
    private lazy var zeroButton = app.staticTexts["0"]
    private lazy var plusButton = app.staticTexts["+"]
    private lazy var minusButton = app.staticTexts["-"]
    private lazy var multiplyButton = app.staticTexts["*"]
    private lazy var divideButton = app.staticTexts["/"]
    private lazy var equalButton = app.staticTexts["="]
    private lazy var resultSum = app.staticTexts["="]
    

    @discardableResult
    func addTwoNumbers() -> Screen {
        tap(fiveButton)
        tap(plusButton)
        tap(fiveButton)
        tap(equalButton)
        return self
    }
    
    @discardableResult
    func calcTwoNumbers(firstNumber: String, calculationType: String, secondNumber: String) -> Screen {
        tap(app.staticTexts[firstNumber])
        tap(app.staticTexts[calculationType])
        tap(app.staticTexts[secondNumber])
        tap(equalButton)
        return self
    }
    
    var isDisplayingResult: Bool {
        return exists(resultSum)
    }
    
}

