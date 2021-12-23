//
//  ViewController.swift
//  Decorator_Medium
//
//  Created by Rav on 23/12/2021.
//

import UIKit

final class ViewController<T: ViewControllerInjectorInterface>: UIViewController {
    private let injector: T = T()
    
    private let decorator: ViewControllerDecoratorInterface
    private let actionButton = UIButton()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        decorator = injector.decorator
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(actionButton)
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            actionButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            actionButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
        decorator.decorate(actionButton: actionButton)
    }
}


