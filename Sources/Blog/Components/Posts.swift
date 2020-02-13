//
//  File.swift
//  
//
//  Created by Bror Hammer Brurberg on 13/02/2020.
//

import Plot
import Publish

extension Node where Context == HTML.BodyContext {
    static func posts(for items: [Item<Blog>], on site: Blog, title: String) -> Node {
        return .pageContent(
            .div(
                .class("mw7 center"),
                .forEach(items) { item in
                    .postExcerpt(for: item, on: site)
                }
            )
        )
    }
}
