//
//  File.swift
//  
//
//  Created by Bror Hammer Brurberg on 13/02/2020.
//

import Foundation
import Plot
import Publish

extension Node where Context == HTML.BodyContext {
    static func page(for page: Page, on site: Blog) -> Node {
        return .pageContent(
            .div(
                .div(
                    .contentBody(page.body)
                )
            )
        )
    }
}
