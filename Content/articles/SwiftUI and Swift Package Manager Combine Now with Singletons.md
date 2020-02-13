---
date: 2019-06-21 00:00
description: A description of my first post.
tags: react-native, swift, javascript, android, ios
short: I want to build upon previous post. This is where we got to:
---
# SwiftUI and Swift Package Manager: Combine! Now with Singletons

I want to build upon previous post. This is where we got to:

<script src="https://gist.github.com/brorhb/32285a3b84147f5a4c8467988f74f927.js" charset="utf-8"></script>

⬆️This is the core of the package, and this is my SwiftUI code ⬇️

<script src="https://gist.github.com/brorhb/498f97e3dfe5d9fda03dae081154aa41.js" charset="utf-8"></script>

Cool right! We can now return a phrase from our language package and show it’s value in a Text view 😁

What’s not so great about this is that if I want to access the language package deeper down in my view hierarchy I’m out of luck. If I want to do that, I need to create a new instance of the Language class, and I dont want to do that, since this would require me to do another fetch and a new loading process and the like. It would work, but it would be slow which is not what we are after 🤨

So what do we do now? Insert [Singletons](https://en.wikipedia.org/wiki/Singleton_pattern)! I bet there are other ways to do this, but this is what I did.

So how do we do this? Well, we need our singleton, and this is how I did it

 <iframe src="https://medium.com/media/7fb2cd2a923ca8e1e656e6183935139f" frameborder=0></iframe>

There is almost nothing to it… You just need to declare a public var/let that can take an instance of Language.

Now we want to use this of course. And this requires some minor changes to our ContentView.swift file, and we want to create a new SwiftUI view as a child 👶 :

 <iframe src="https://medium.com/media/aea99e670d9817b660cb307109d5a9d2" frameborder=0></iframe>

We now use the public variable containing our singleton as the @ObjectBinding variable. But we still need to fetch somewhere, so let’s just to it here 😄

Now to the child view:

 <iframe src="https://medium.com/media/e8ea7f08718b8d255b82a688ab7103c2" frameborder=0></iframe>

This is pretty much a replica of our old ContentView.swift file. But the well trained eye 👁 will see that we don't call the fetch method! This is because the parent did it, so we don’t need to do it again 😄 But we could still access all the variables and methods of the class 😁

Thanks for reading 🙏

This is how it looks like for me ☺️ I got some different naming, and my getPhrase needs more params but the rest is the same 😄

![](https://cdn-images-1.medium.com/max/7240/1*976NOPwe0_05GN1jIJor4g.gif)
