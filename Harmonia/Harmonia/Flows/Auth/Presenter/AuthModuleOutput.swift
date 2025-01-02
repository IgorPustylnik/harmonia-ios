//
//  AuthModuleOutput.swift
//  Harmonia
//
//  Created by igorpustylnik on 02/01/2025.
//  Copyright © 2025 Igor Pustylnik. All rights reserved.
//

protocol AuthModuleOutput: AnyObject {

    var onComplete: (() -> Void)? { get set }

}
