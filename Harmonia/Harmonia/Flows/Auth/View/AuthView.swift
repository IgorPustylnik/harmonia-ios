//
//  AuthView.swift
//  Harmonia
//
//  Created by igorpustylnik on 02/01/2025.
//  Copyright © 2025 Igor Pustylnik. All rights reserved.
//

import UIKit

final class AuthView: UIView {

    // MARK: - UI Elements

    private var vkButton: UIView

    // MARK: - Private properties

    // MARK: - Init

    init(vkButton: UIView) {
        self.vkButton = vkButton
        super.init(frame: .zero)
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - UI Setup

    private func setupUI() {
        addSubview(vkButton)

        vkButton.anchor(leading: safeAreaLayoutGuide.leadingAnchor,
                        bottom: safeAreaLayoutGuide.bottomAnchor,
                        trailing: safeAreaLayoutGuide.trailingAnchor,
                        padding: UIEdgeInsets(top: 0, left: 16, bottom: 54, right: 16))
    }

}
