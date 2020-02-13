---
date: 2018-11-06 00:00
description: A description of my first post.
tags: swift, ios
short: I’m late to the game, I’ve been looking at Swift from a distance, lurking over at /r/swift watching the evolution of the language and the community. This autumn I decided I’d want to learn more of this language, in my previous post I went a bit into why.
---

# First impressions of developing with Swift

I’m late to the game, I’ve been looking at Swift from a distance, lurking over at /r/swift watching the evolution of the language and the community. This autumn I decided I’d want to learn more of this language, in my previous post I went a bit into why.

Swift is now at 4.2, and I figured I could start my journey here. I have some experience from Xcode from previous endeavours, so navigating this application wasn't too hard. The one thing I do not like however with iOS development is the storyboards, I guess this is because I started out as a web-dev that transitioned into React Native. I like to write my UI, and did not think this was possible with Xcode. I think Apple wants you to use storyboards because; I guess it's easier for newcomers to programming?
I stumbled opon a YouTube channel “Lets Build That App”, and learned that this guy writes out his UI in code! When I realised this, I went out and found a project I could do.

I use sentry.io to track bugs in projects, but to my knowledge Sentry does not provide a mobile application. They do however provide API’s, and rather good ones at that with good documentation. My starting project would be to build an app that lets you login with a Sentry token, fetch projects and fetch issues related to those projects. The app would not be pretty, I just wanted to build an app that covered a lot of basic functionality (login flow, tableviews, custom cells, fetch from http requests and persisting data).
Following a couple of tutorials on programmatic UI with Swift, I was able to complete this project in a couple of nights.

- [UITableView programmatic](https://softauthor.com/ios-uitableview-programmatically-in-swift)

- [Auto Layout Constraints](https://www.youtube.com/watch?v=1hCwOIgjLBA)

These two tutorials stood out to me, and became important for my app. The rest of the app I just Googled my issue or searched around the documentation built into Xcode.

My experience building this app was awesome😎. I now really like Swift, it's fun and I figured I could work really well with this tool. The documentation built into Xcode is so much better than anything I’ve experienced earlier in my web projects.

Coming from Javascript the thing I think I like the most in Swift is the type safety. If I try to do something too weird, Xcode will complain and for most of the time give useful feedback to me as a dev. It feels good to not be able to change variables type on a whim, you have to think more about how you want to tackle a problem, and I mean this in a good way. I would say my code feels better in Swift. I find it easy to read, and I find it more reusable since I’m forced to write my code more general.

Also, on a general note. Working with another language feels nice and fresh. It breaks my usual pattern, and keeps me sharp.
From now on, I will try to put in an hour a day dedicated to learn all about Swift and iOS development. Guess I’ll write more about further findings in the future.
