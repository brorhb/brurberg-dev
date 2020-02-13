---
date: 2019-03-25 00:00
description: A description of my first post.
tags: flutter, ios, android
short: Once again it’s been a while. Since my last post, I’ve worked a lot with Flutter and Dart. And I still really enjoy it. Since last time, I’ve joined the Flutter community on Discord and Reddit, and this community is amazing. It is filled with amazing talented people, that like to help others when they are stuck on something. Even I have helped some people along the way, and I have learned so much from trying to solve other peoples problems.
---
# I want Flutter to help my colleagues
Once again it’s been a while. Since my last post, I’ve worked a lot with Flutter and Dart. And I still really enjoy it. Since last time, I’ve joined the Flutter community on Discord and Reddit, and this community is amazing. It is filled with amazing talented people, that like to help others when they are stuck on something. Even I have helped some people along the way, and I have learned so much from trying to solve other peoples problems.

But this post is not about the Flutter community. It’s about how I’ve learned to use Flutter to build apps. This is a broad thing, so I will focus on one part. I’ve built a package for work. The package is a demo for how we can have one Dart pacakage that copntains what is needed for a MVP app. This pacakage contains authentication functionallity along side fetching and posting data from our APIs.

The package is built using the BLoC pattern, and the library provide providers for each of the BLoCs. By using this package I was able to recreate one of our existing application in a day in less than 20kb of dart code. I just needed to write the UI code, since all the business logic for handlig authentication, authentication-state, fetching and storing data and the like is in the package. The result is a lightning fast application that is a good proof of concept of how we can use Flutter at work for rapid development.

The package it self have taken me around a full week at work to come this far. At this point I have made BLoCs for all our API-endpoints and the common actions. The one thing that have taken the most time, was writing out all the model classes for the API-responses.

And I’ve learned a lot from doing this. The main thing; by doing app development, you’ll become a fullstack developer. While making this, I’ve written everything from UI-code to SQL for storing data for offline usage.

The cool thing about working with Dart and Flutter is that people have a lot of toughts on how to do stuff. But the technology is still so young that while there are many toughts, there is no definite answers to stuff. I have experienced this while trying to figure out the BLoC pattern. I have followed multiple blog-post, watched how the Flutter team does it on The Boring Flutter Development Show and how Stephen Grider does it in this Udemy course. I think I have adobted somthing inbetween, trying to tweak these approaches to fit my style.

As stated my BLoC inspired package exposes multiple BLoCs trough individual providers. Since each BLoC handels all functionallity for a API-endpoint. The BLoCs has multiple streams providing data for the UI. They also have some sinks, altough I mostly use sinks for APIs with less funtionallity. For endpoints with more functionallity I stray somewhat away from what is typical for the BLoC pattern where everything is streams, and I combine streams with some exposed methods. I’ve used normal methods for large post operations, that takes a lot of params. I haven’t seen a good way to give hints to the developer of what a sink wants, but in a method I can expose such information easier.

For now I’m the only one using this package, but my goal is to make it easier for my colleages to make apps for our company. When they get an idea, I dont want them to struggle with model classes, fetching and parsing JSON, handle authentication and the like. I want to provide them something that gives them this. If they need to manipulate the data more, they can do it in their apps, but this package provide them with a good foundation.

Here is a proof of concept app in gif form using my package. The app is less then 20KB of Dart-code, and it’s only UI code. The rest is provided by the package (authentication and data).

<img src="/images/i-want-flutter-to-help-my-colleagues/poc.gif" alt="Proof of concept" height="500"/>
