//
//  AuthCoordinator.swift
//  Harmonia
//
//  Created by igorpustylnik on 02/01/2025.
//  Copyright © 2025 Igor Pustylnik. All rights reserved.
//

import UIKit

final class AuthCoordinator: BaseCoordinator, AuthCoordinatorOutput {

    // MARK: - AuthCoordinatorOutput

    var onComplete: (() -> Void)?

    // MARK: - Private Properties

    private let router: Router

    // MARK: - Initialization

    init(router: Router) {
        self.router = router
    }

    override func start() {
        let (view, output) = AuthModuleConfigurator().configure()
        output.onComplete = { [weak self] in
            self?.onComplete?()
        }
        router.setRootModule(view)
    }

}

// MARK: - Private methods

private extension AuthCoordinator {

}
