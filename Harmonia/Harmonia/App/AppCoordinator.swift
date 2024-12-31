//
//  AppCoordinator.swift
//  Harmonia
//
//  Created by Игорь Пустыльник on 31.12.2024.
//

import Foundation

enum UserState {
    case unauthorized
    case authorized
}

private enum LaunchInstructor {
    case auth
    case main

    static func configure(userState: UserState) -> LaunchInstructor {
        switch userState {
        case .unauthorized:
            return .auth
        case .authorized:
            return .main
        }
    }
}

final class AppCoordinator: BaseCoordinator {

    // MARK: - Private Properties

    private var instructor: LaunchInstructor {
        return .configure(userState: .unauthorized)
    }

    // MARK: - Init

    override init() {
        super.init()
    }

    // MARK: - Coordinator

    override func start() {
        switch instructor {
        case .auth:
            runAuthFlow()
        case .main:
            runMainFlow()
        }
    }

}

// MARK: - Private Methods

private extension AppCoordinator {

    func runAuthFlow() {
    }

    func runMainFlow() {
    }

}
