//
//  File.swift
//  
//
//  Created by Bror Hammer Brurberg on 13/02/2020.
//


import Foundation
import Publish
import Plot

extension Node where Context == HTML.BodyContext {
    static func postExcerpt(for item: Item<Blog>, on site: Blog) -> Node {
        return .article(
            .class("pv4 ph3 ph0-l"),
            .div(
                .class("flex flex-column"),
                .div(
                    .class("w-100 pr3-ns order-2 order-1-ns"),
                    .a(
                        .class("f3 f2-m f1-l fw2 black-90 mv3 no-underline"),
                        .href(item.path),
                        .text(item.title)
                    ),
                    .div(
                        .class("post-description tl"),
                        .p(.text(item.metadata.short ?? ""))
                    ),
                    .p(
                        .class("f6 lh-copy gray mv0"),
                        .text(DateFormatter.blog.string(from: item.date)),
                        .tagList(for: item, on: site)
                    )
                )
            )
        )
    }
}
