//
//  AuthPresenter.swift
//  Harmonia
//
//  Created by igorpustylnik on 02/01/2025.
//  Copyright © 2025 Igor Pustylnik. All rights reserved.
//

final class AuthPresenter: AuthModuleOutput {

    // MARK: - AuthModuleOutput

    var onComplete: (() -> Void)?

    // MARK: - Properties

    weak var view: AuthViewInput?
}

// MARK: - AuthModuleInput

extension AuthPresenter: AuthModuleInput {

}

// MARK: - AuthViewOutput

extension AuthPresenter: AuthViewOutput {

    func viewLoaded() {
        view?.setupInitialState()
    }

}
