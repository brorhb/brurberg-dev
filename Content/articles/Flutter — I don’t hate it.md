---
date: 2019-01-29 00:00
description: A description of my first post.
tags: flutter, ios, android
short: In cross-platform mobile development, we have a couple of alternatives now. My main experience is with React Native, but over the last 4–5 days, I’ve accumulated 17 hours of experience with Flutter (According to Toggl). My inspiration to look more into this technology came from researching Material design, and reading this Medium post.
---
# Flutter — I don’t hate it

In cross-platform mobile development, we have a couple of alternatives now. My main experience is with React Native, but over the last 4–5 days, I’ve accumulated 17 hours of experience with Flutter (According to Toggl). My inspiration to look more into this technology came from researching Material design, and reading this Medium post.

After I got my inspiration, and got a new reason to look more at Flutter (Although I’ve been lurking r/flutterDev for over a year). I checked out the Flutter roadmap for 2019, and I really liked the Flutter teams focus to mature the platform. This is why I haven't look to much at Flutter before: It’s a Google product, and while Googles support is good, I’ve also seen how quick Google can be to kill off a product. By looking at the roadmap, it feels like the platform gets the attention it needs, this pushed me to try do something with it.

<img src="/images/flutter-i-dont-hate-it/curiosity.jpeg" alt="curiosity"/>

So, to the project and reason. I revisited the first project I was a part of when I got my job. It’s a hybrid mobile application. It’s a HSEQ application, where the user quickly can view recent exposures to chemicals at work, or add a new exposure to the registry. The app consists of 5 screens, including a settings page and login-flow. It’s a small and not to advanced app, and it was a perfect project to use to learn a new technology. It has all the basics, a login-flow, fetch data from a REST-api, and view data from the results, and then post some data back to it.

Today, I finished a prototype of this app. It took me 17 hours as I’ve stated earlier, that includes research and learning Dart2 and Flutter along the way. One of my colleagues asked me for my opinion of it, and he said I gave it really high praise by saying: “I dont hate it?”, and I guess that's true.

It did not take me to long to understand what was going on. The documentation is the best documentation I’ve ever seen. The performance of the app is surprisingly good, even on slower devices, and it’s easy to create tasteful animations that help the user understand what’s going on.

<img src="/images/flutter-i-dont-hate-it/documentation.jpeg" alt="documentation"/>

What’ weird with Flutter for me, is that: It does not look like anything I’ve worked with before, yet it feels familiar. It does not look like JavaScript to me, but it kind of feels like it.

<img src="/images/flutter-i-dont-hate-it/fry.jpeg" alt="feels like home"/>

Flutter solves some of my gripes with JavaScript and React Native, and that is that Flutter and Dart is AOT-compiled. For what I’ve experienced now; this means that performance seems smoother, and crashes happens more gracefully. If a fetch responds with something the code does not expect, the app does not go into “red screen of death”, it just stays at the last place things worked and acts like nothing has happened. During development, this feels less infuriating, and keeping the app open if something goes wrong, is way better than throwing the user back to their homescreen all of a sudden.

Second, I’ve mentioned the documentation Flutter have. It’s amazing, they even got a “Flutter for React Native devs”. It’s good idea, and it’s well executed. This section allowed to avoid Google-searches like “How to send a prop to a class in flutter”; because the documentation have it’s own section for this!

What’s cool with Flutter is that it allows me to use my existing knowledge, and transfer it to Flutter relatively quickly. Flutter is easy to learn, and gives good performance.
