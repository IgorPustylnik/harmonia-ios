//
//  AuthViewController.swift
//  Harmonia
//
//  Created by igorpustylnik on 02/01/2025.
//  Copyright © 2025 Igor Pustylnik. All rights reserved.
//

import UIKit

final class AuthViewController: UIViewController {

    // MARK: - Properties

    private var authView: AuthView

    var output: AuthViewOutput?

    // MARK: - Init

    init(vkButton: UIView) {
        authView = AuthView(vkButton: vkButton)
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        setAnimatedFluidBackground()
        output?.viewLoaded()
    }

    override func loadView() {
        view = authView
    }
}

// MARK: - AuthViewInput

extension AuthViewController: AuthViewInput {

    func setupInitialState() {

    }

}
