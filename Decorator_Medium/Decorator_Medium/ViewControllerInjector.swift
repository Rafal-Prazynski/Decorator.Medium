//
//  ViewControllerInjector.swift
//  Decorator_Medium
//
//  Created by Rav on 23/12/2021.
//

import Foundation

protocol ViewControllerInjectorInterface {
    init ()
    var decorator: ViewControllerDecoratorInterface { get }
}

final class ViewControllerInjector: ViewControllerInjectorInterface {
    init() {}
    
    var decorator: ViewControllerDecoratorInterface {
        ViewControllerDecorator()
    }
}
