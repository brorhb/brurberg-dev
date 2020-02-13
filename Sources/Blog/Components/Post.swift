//
//  File.swift
//  
//
//  Created by Bror Hammer Brurberg on 13/02/2020.
//

import Plot
import Publish
import Foundation

extension Node where Context == HTML.BodyContext {
    static func post(for item: Item<Blog>, on site: Blog) -> Node {
        return .pageContent(
            .div(
                .class("flex justify-center"),
                .div(
                    .class("ph2 mw6-ns w-100 flex-none"),
                    .p(
                        .class("f5 fw4 gray mt0 w-80"),
                        "\(DateFormatter.blog.string(from: item.date))"
                    ),
                    .tagList(for: item, on: site),
                    .div(
                        .div(
                            .class("tl"),
                            .contentBody(item.body)
                        )
                    )
                )
            )
        )
    }
}
