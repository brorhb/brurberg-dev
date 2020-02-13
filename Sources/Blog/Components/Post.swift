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
            .p(
                .class("f5 fw4 gray mt0"),
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
    }
}
