//
//  UIViewController+ext.swift
//  Harmonia
//
//  Created by Игорь Пустыльник on 02.01.2025.
//

import UIKit
import SwiftUI
import FluidGradient

extension UIViewController {

    func setAnimatedFluidBackground() {
        let backgroundView =
        FluidGradient(blobs: [.red, .green, .blue],
                      highlights: [.yellow, .orange, .purple],
                      speed: 0.25,
                      blur: 0.75)
        .background(.quaternary)
        .ignoresSafeArea()
        let hostingController = UIHostingController(rootView: backgroundView)

        addChild(hostingController)
        hostingController.view.frame = view.bounds
        hostingController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(hostingController.view)
        hostingController.didMove(toParent: self)
    }

}
