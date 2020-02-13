import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct Blog: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case articles
        case about
        case projects
    }

    struct ItemMetadata: WebsiteItemMetadata {
        var short: String?
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://brurberg.dev")!
    var title = "brurberg.dev"
    var name = "Bror Brurberg"
    var styleSheet = "../../Resources/Pure/style.css"
    var description = "Just another remote app developer"
    var language: Language { .english }
    var imagePath: Path? { nil }
    var socialmediaLinks: [SocialMediaLink] {
        [
            .location,
            .github,
            .twitter,
            .linkedIn
        ]
    }
}

// This will generate your website using the built-in Foundation theme:
//try Blog().publish(withTheme: .blog)
try Blog().publish(using: [
    .generateHTML(withTheme: .blog),
    .generateRSSFeed(including: .),
])
