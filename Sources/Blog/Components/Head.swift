//
//  File.swift
//  
//
//  Created by Bror Hammer Brurberg on 13/02/2020.
//

import Plot

extension Node where Context == HTML.DocumentContext {
    static func head(for site: Blog) -> Node {
        return Node.head(
            .meta(
                .charset(.utf8),
                .name("viewport"),
                .content("width=device-width, initial-scale=1")
            ),
            /*.link(
                .rel(.stylesheet),
                .href("https://unpkg.com/purecss@1.0.1/build/pure-min.css")
            ),
            .link(
                .rel(.stylesheet),
                .href("https://unpkg.com/purecss@1.0.1/build/grids-responsive-min.css")
            ),
            .link(
                .rel(.stylesheet),
                .href("/Pure/styles.css")
            ),*/
            .link(
                .rel(.stylesheet),
                .href("https://unpkg.com/tachyons@4.10.0/css/tachyons.min.css")
            ),
            .link(
                .rel(.stylesheet),
                .href("/styles.css")
            ),
            .title(site.title)
        )
    }
}
