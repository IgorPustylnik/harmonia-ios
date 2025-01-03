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
            guard let vkidService: VKIDService = ServiceLocator.shared.resolve() else {
                preconditionFailure("Failed to resolve VKIDService")
            }

            let view = AuthViewController(vkButton: vkidService.vkButton())
            let presenter = AuthPresenter()

            presenter.view = view
            view.output = presenter

            return (view, presenter)
        }

}
