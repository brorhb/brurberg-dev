---
date: 2019-06-19 00:00
description: A description of my first post.
tags: react-native, swift, javascript, android, ios
short: So, now it's been almost two weeks since WWDC, and we are currently on the second iteration on betas. Today I got the opportunity to experiment with a lot of stuff I don't know too much about: SwiftUI, Combine, Swift Package Manager and Swift. I have played around with Swift before, but I don’t use it often enough to feel comfortable with it. So I figured I should try it all… My feelings going in: “I have no idea what I’m doing”
---

# SwiftUI and Swift Package Manager: Combine!

So, now it's been almost two weeks since WWDC, and we are currently on the second iteration on betas. Today I got the opportunity to experiment with a lot of stuff I don't know too much about: SwiftUI, Combine, Swift Package Manager and Swift. I have played around with Swift before, but I don’t use it often enough to feel comfortable with it. So I figured I should try it all… My feelings going in: “I have no idea what I’m doing”

![My feelings going into this](https://cdn-images-1.medium.com/max/2008/1*7N_pMAomi-v06ZW4-NAqNA.jpeg)

So what am I doing? So, as I’ve mentioned in an earlier post: I’ve made created a package with Dart and Flutter that provides core functionality and business logic specific for my company. Making app development easier since you don't have to write models, fetch, authentication and the like again and again for each app. One small part of this package is the hookups to our central language system. So I wanted to recreate this language part with Swift, and make it available to other internal developers as a Swift Package📦 I also wanted to prove to my self that Dart and Flutter skills do indeed transfer somewhat over to SwiftUI skills.

So where to begin. I needed to install the macOS Catalina beta ([I did it following this guide](https://medium.com/@martinlasek/install-macos-catalina-xcode-11-beta-4701b6e3a296)) then Xcode 11 beta. When I finished this process I was ready. I created a new project “File -> New -> Swift Package” Swift Package is new to Xcode 11, and Apple have integrated Swift Package Manager into Xcode. This gives you a package project to work with with tests. Then I had to write my structs for handling the JSON data from my API, and then a simple parser function:

 <iframe src="https://medium.com/media/615a59d71709e22aed9739a7944f44a2" frameborder=0></iframe>

Pretty cool 😎 Or, it's cool to me… If you know Swift this is probably not impressive. Now you can parse JSON into a struct as long it’s a one to one with the struct.

    let myListOfItems: [Item] = parser(json)

Now I needed to figure out what to do with this data. I needed to make it available to other classes, and somehow notify other classes when this class gets some data.

    import Combine
    import SwiftUI

Pretty much the answer. I needed to make my class conform to BindableObject and have some variable to notify listeners when the class is ready. I don’t know if I’ve done this the right way, but it works.

 <iframe src="https://medium.com/media/e821cae8b3f93921cde2861f6f0a8356" frameborder=0></iframe>

This is pretty much what happens. There is more going on, but that is specific for my use-case and don’t serve to much a purpose here 😅

Now after writing this, I was ready to test it within a separate SwiftUI project. I created my SwiftUI project, and added the package. I struggled way to much with this step, and I could not find much information about this either.

So this is how I did it. It’s pretty simple, but I did not know how to it

 1. Drag the folder of the package into the project (It should be at the same level as the ContentView.swift file in a new SwiftUI project)

 2. Open the settings pane where you set display name, Bundle Identifier, Deployment info and the like. Scroll down to “Frameworks, Libraries and Embedded Content”. Click the plus button

 3. At the top of the list that is now reviled you can hopefully see you package, maybe you need to scroll, I did not need to but YMMV.

 4. Click little library icon looking kind of like this: 🏛

 5. Click Add

Now you can import the classes of you package 😁

At this point I discovered that Xcode did not see my classes. I quickly learned that anything you want to expose to you app, needs to be public. I don't know if this is the right way to do it, but it works… Will update if I learn something new on this.

So I needed to update my package

 <iframe src="https://medium.com/media/57c7bcf301a69f087fa4b7e0c82c0704" frameborder=0></iframe>

Note that I also needed to make the Phrase struct public.

Now I you can use the package like this!

 <iframe src="https://medium.com/media/142e91ab9cdf296ea0c4c0c6266f23a4" frameborder=0></iframe>

Now stuff works! And what a joy 🙌

But… I got an error, or not an error but a purple looking warning ⚠️ Telling me something about not triggering UI updates on a background thread. This is easy to fix. Although I’m not yet sure this is the best way to handle this:

In the package, change this:

    public var state: LoadingState = .loading {
      didSet {
        didChange.send(self)
      }
    }

into this:

    public var state: LoadingState = .loading {
      didSet {
        DispatchQueue.main.async {
          self.didChange.send(self)
        }
      }
    }

Now it works!

And I at least have learned a lot! And what a wonderful feeling to get this to work 😁 The hardest part were that there is basically no tutorials on this yet, so I had to learn from the documentation, experimentation and trying to understand the errors Xcode threw at me. But I’m happy with the outcome.

I have since implemented a getPhrase method that returns a single phrase as a string based on some id. I’m super happy with todays work, and I want to do more SwiftUI development in the future 😁
