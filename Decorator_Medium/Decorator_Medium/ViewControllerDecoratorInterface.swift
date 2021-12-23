//
//  ViewControllerDecoratorInterface.swift
//  Decorator_Medium
//
//  Created by Rav on 23/12/2021.
//

import UIKit

private struct Config {
    let buttonBorderColor: CGColor = UIColor.systemGray.cgColor
    let buttonBorberWidth: CGFloat = 2
    let buttonBorderCornerRadius: CGFloat = 2
    let buttonFontBold: UIFont = .boldSystemFont(ofSize: 18)
    let buttonTitle = "Some awesome action!"
}

protocol ViewControllerDecoratorInterface {
    func decorate(actionButton: UIButton)
}

final class ViewControllerDecorator: ViewControllerDecoratorInterface {
    private let config = Config()
    
    func decorate(actionButton: UIButton) {
        actionButton.setTitle(config.buttonTitle, for: .normal)
        actionButton.titleLabel?.font = config.buttonFontBold
        actionButton.layer.borderColor = config.buttonBorderColor
        actionButton.layer.borderWidth = config.buttonBorberWidth
        actionButton.layer.cornerRadius = config.buttonBorderCornerRadius
    }
}
