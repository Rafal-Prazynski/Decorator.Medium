//
//  DecoratorTests.swift
//  DecoratorTests
//
//  Created by Rav on 23/12/2021.
//

import XCTest
@testable import Decorator_Medium

class DecoratorTests: XCTestCase {
    
    func testDecorator() {
        let button = UIButton()
        let sut = ViewControllerDecorator()
        sut.decorate(actionButton: button)
        XCTAssertEqual(button.titleLabel?.text, "Some awesome action!")
        XCTAssertEqual(button.titleLabel?.font, .boldSystemFont(ofSize: 18))
        XCTAssertEqual(button.layer.borderWidth, 2)
        XCTAssertEqual(button.layer.cornerRadius, 2)
        XCTAssertEqual(button.layer.borderColor, UIColor.systemGray.cgColor)
    }
}
