//
//  File.swift
//  
//
//  Created by Bror Hammer Brurberg on 13/02/2020.
//

import Plot

extension Node where Context == HTML.BodyContext {
    private static var sections: [Blog.SectionID] {
        [Blog.SectionID.about, Blog.SectionID.articles, Blog.SectionID.projects]
    }
    
    static func header(for site: Blog) -> Node {
        return .div(
            .div(
                .class("tc pv4 pv5-ns"),
                .a(
                    .href("/"),
                    .img(
                        .src("https://avatars3.githubusercontent.com/u/12571304?s=460&v=4"),
                        .class("br-100 pa1 ba b--black-10 h3 w3"),
                        .alt("Avatar")
                    )
                ),
                .a(
                    .href("/"),
                    .class("no-underline"),
                    .h1(
                        .class("f5 f4-ns fw6 mid-gray"),
                        "\(site.title)"
                    )
                ),
                .h2(
                    .class("f6 gray fw2 ttu tracked"),
                    "\(site.description)"
                ),
                .div(
                    .class("tc pa3"),
                    .forEach(sections, { section in
                        .a(
                            .class("f6 fw4 hover-black no-underline black-60 dn dib-ns pv2 ph3"),
                            .text(section.rawValue.capitalized),
                            .href(site.path(for: section))
                        )
                    })
                )
            )
        )
    }
}
