//
//  AnyAppAlert.swift
//  Architecture
//
//  Created by Mahipal Singh on 10/09/26.
//

import SwiftUI

struct AnyAppAlert: Sendable {
    var title: String
    var subtitle: String?
    var buttons: @Sendable () -> AnyView

    init(
        title: String,
        subtitle: String? = nil,
        buttons: (@Sendable () -> AnyView)? = nil
    ) {
        self.title = title
        self.subtitle = subtitle
        self.buttons = buttons ?? {
            AnyView(
                Button("Ok") { }
            )
        }
    }

    init(error: Error) {
        self.init(
            title: "Error",
            subtitle: error.localizedDescription,
            buttons: nil
        )
    }
}

