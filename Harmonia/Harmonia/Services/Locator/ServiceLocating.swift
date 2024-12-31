//
//  ServiceLocating.swift
//  Harmonia
//
//  Created by Игорь Пустыльник on 31.12.2024.
//

protocol ServiceLocating {
    func resolve<T>() -> T?
}
