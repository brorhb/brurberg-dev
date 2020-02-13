//
//  File.swift
//  
//
//  Created by Bror Hammer Brurberg on 13/02/2020.
//

import Publish
import Plot

class BlogHTMLFactory: HTMLFactory {
    
    func makeSectionHTML(for section: Section<Blog>, context: PublishingContext<Blog>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: context.site),
            .body(
                .class("sans-serif"),
                .grid(
                    .header(for: context.site),
                    .posts(
                        for: context.allItems(sortedBy: \.date, order: .descending).filter {$0.sectionID == section.id},
                        on: context.site,
                        title: "Recent content"
                    )
                ),
                .bbfooter()
            )
        )
    }
    
    func makeItemHTML(for item: Item<Blog>, context: PublishingContext<Blog>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: context.site),
            .body(
                .class("sans-serif"),
                .grid(
                    .header(for: context.site),
                    .post(for: item, on: context.site)
                ),
                .bbfooter()
            )
        )
    }
    
    func makePageHTML(for page: Page, context: PublishingContext<Blog>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: context.site),
            .body(
                .class("sans-serif"),
                .grid(
                    .header(for: context.site),
                    .page(for: page, on: context.site)
                ),
                .bbfooter()
            )
        )
    }
    
    func makeTagListHTML(for page: TagListPage, context: PublishingContext<Blog>) throws -> HTML? {
        HTML()
    }
    
    func makeTagDetailsHTML(for page: TagDetailsPage, context: PublishingContext<Blog>) throws -> HTML? {
        HTML()
    }
    
    
    func makeIndexHTML(for index: Index,
                       context: PublishingContext<Blog>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: context.site),
            .body(
                .class("sans-serif"),
                .grid(
                    .header(for: context.site),
                    .posts(
                        for: context.allItems(sortedBy: \.date, order: .descending),
                        on: context.site,
                        title: "Recent content"
                    )
                ),
                .bbfooter()
            )
        )
    }
    
}
