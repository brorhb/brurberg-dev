//
//  File.swift
//  
//
//  Created by Bror Hammer Brurberg on 13/02/2020.
//


import Plot

extension Node where Context == HTML.BodyContext {
    static func bbfooter() -> Node {
        return .footer(
            .class("pv4 ph3 ph5-m ph6-l mid-gray"),
            .div(
                .class("f6 db tc"),
                "© 2020 Bror Brurberg All Rights Reserved"
            ),
            .div(
                .class("pv4 ph3 ph5-m ph6-l mid-gray f6 db tc"),
                .text("Generated using "),
                .a(
                    .text("Publish"),
                    .href("https://github.com/johnsundell/publish")
                ),
                .text(". Written in Swift")
            )
        )
    }
}
