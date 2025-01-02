//
//  AuthCoordinatorOutput.swift
//  Harmonia
//
//  Created by igorpustylnik on 02/01/2025.
//  Copyright © 2025 Igor Pustylnik. All rights reserved.
//

import UIKit

protocol AuthCoordinatorOutput: AnyObject {

    var onComplete: (() -> Void)? { get set }

}
