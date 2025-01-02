//
//  AuthModuleConfigurator.swift
//  Harmonia
//
//  Created by igorpustylnik on 02/01/2025.
//  Copyright © 2025 Igor Pustylnik. All rights reserved.
//

import UIKit

final class AuthModuleConfigurator {

    func configure() -> (
       AuthViewController,
       AuthModuleOutput) {
        let view = AuthViewController()
        let presenter = AuthPresenter()

        presenter.view = view
        view.output = presenter

        return (view, presenter)
    }

}
