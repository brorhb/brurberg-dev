//
//  File.swift
//  
//
//  Created by Bror Hammer Brurberg on 13/02/2020.
//

import Publish
import Plot

/*
 
 .post-category-swift {
     background: #FF6300;
 }
 .post-category-ios {
     background: #336B87;
 }
 .post-category-android {
     background: #336B87;
 }
 .post-category-flutter {
     background: #336B87;
 }
 .post-category-react-native {
     background: #336B87;
 }
 .post-category-life {
     background: #2A3132;
 }
 .post-category-other {
     background: #763526;
 }
 
 */

extension Node where Context == HTML.BodyContext {
    static func tagList(for tags: [Tag], on site: Blog) -> Node {
        return .div(.class("post-tags"), .forEach(tags) { tag in
            var tagColor: String = "bg-gray"
            switch tag.string.lowercased() {
            case "swift":
                tagColor = "bg-orange"
            case "ios":
                tagColor = "bg-blue"
            case "android":
                tagColor = "bg-green"
            case "flutter":
                tagColor = "bg-pink"
            case "react-native":
                tagColor = "bg-light-blue"
            case "life":
                tagColor = "bg-gold"
            default:
                tagColor = "bg-gray"
            }
            return .a(
                .class("mr1 f6 grow no-underline br-pill ph2 pv1 mb1 dib white \(tagColor)"),
                //.href(site.path(for: tag)),
                .text(tag.string)
            )
        })
    }
    
    static func tagList(for item: Item<Blog>, on site: Blog) -> Node {
        return .tagList(for: item.tags, on: site)
        
    }
    
    static func tagList(for page: TagListPage, on site: Blog) -> Node {
        return .tagList(for: Array(page.tags), on: site)
    }
}
