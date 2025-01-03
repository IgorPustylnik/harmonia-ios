//
//  VKIDService.swift
//  Harmonia
//
//  Created by Игорь Пустыльник on 03.01.2025.
//

import VKID
import Foundation
import UIKit

enum InfoPlist {
    static var clientId = Bundle.main.infoDictionary?["CLIENT_ID"] as? String
    static var clientSecret = Bundle.main.infoDictionary?["CLIENT_SECRET"] as? String
}

class VKIDService {

    // MARK: - Properties

    let vkid: VKID

    // MARK: - Init

    init() {
        guard let clientId = InfoPlist.clientId else {
            preconditionFailure("Failed to initialize VKID: Client ID not found")
        }
        guard let clientSecret = InfoPlist.clientSecret else {
            preconditionFailure("Failed to initialize VKID: Client Secret not found")
        }
        do {
            vkid = try VKID(
                config: Configuration(
                    appCredentials: AppCredentials(
                        clientId: clientId,
                        clientSecret: clientSecret
                    ),
                    loggingEnabled: false
                )
            )
        } catch {
            preconditionFailure("Failed to initialize VKID: \(error)")
        }
        print(vkid.authorizedSessions)
    }

    // MARK: - Public methods

    func vkButton() -> UIView {
        let oneTapButton = OneTapButton(
            appearance: .init(
                style: .primary(),
                theme: .matchingColorScheme(.system)
            ),
            layout: .regular(
                height: .medium(.h44),
                cornerRadius: 8
            ),
            presenter: .newUIWindow
        ) { authResult in
            do {
                let session = try authResult.get()
                print("Auth succeeded:\n\(session)")
            } catch AuthError.cancelled {
                print("Auth cancelled by user")
            } catch {
                print("Auth failed with error: \(error)")
            }
        }
        return vkid.ui(for: oneTapButton).uiView()
    }

    func open(url: URL) {
        vkid.open(url: url)
    }

}
