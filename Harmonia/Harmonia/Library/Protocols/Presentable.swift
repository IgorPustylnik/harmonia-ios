//
//  Presentable.swift
//  Harmonia
//
//  Created by Игорь Пустыльник on 31.12.2024.
//

import UIKit

protocol Presentable {
    func toPresent() -> UIViewController?
}

extension UIViewController: Presentable {

    func toPresent() -> UIViewController? {
        return self
    }

}
