---
date: 2019-11-06 00:00
description: A description of my first post.
tags: flutter
short: Previously I posted about my 2.0 update, and today I plan on updating to 2.0.3. I’m still a lone-wolf app developer in my company, and I have now taken the task to push updates every 2 to 3 weeks. These updates can be anything from features to patches and bug squashing.
---

# UI Testing

Previously I posted about my 2.0 update, and today I plan on updating to 2.0.3. I’m still a lone-wolf app developer in my company, and I have now taken the task to push updates every 2 to 3 weeks. These updates can be anything from features to patches and bug squashing.

To update this often, and to be the only developer I need to make sure everything I give to the testers pass some sort of quality control. I need something repeatable consistent and quick to test that the builds I ship work. That new features and fixes don’t mess something up in some other part of my apps.

Enter UI testing! 😁 This post won’t be about Flutter in particular, but why I think UI testing is crucial for my work, and the result from implementing them.

Well, I lied 🤥, I need to mention Flutter. To do my testing, I use [flutter_driver](https://flutter.dev/docs/cookbook/testing/integration/introduction). Flutter driver starts the app in a simulator, or on a device. And it works it’s way trough your instructions and actually behaves like a user. It taps the screen, scrolls goes back like a user would.

So I have implemented scripts in my applications that navigates trough all my normal workflows in the apps. I can watch it zoom 🏎 trough the app, reporting crashes and successes so I can act on them. I also love how it looks!😎

![flutter_driver zooms trough some base functionality](https://cdn-images-1.medium.com/max/2000/1*DkBIyVW1Jy0BSflvsf735Q.gif)

As you can see, the flutter_driver actually runs the app. Inputs login info, log in a user, waits for data to load and then starts to act on it. This is not all my tests, in total it runs for around 30seconds to a minute. I don’t mock any of my api-calls, I would rather like it to take longer, then to keep updating my mock data as the api changes. It also makes it easier for me, if one of the testers get some issues. If they want to give me some credentials, I can run trough the whole app as them, making it way easier to find the real issue of bug they encountered.

Before I start the process of a new build, I always run trough these tests. The result I have observed over the last couple of weeks where I’ve been doing this is: Fewer crash-reports in [sentry](https://sentry.io/welcome/), fewer bugs reported by the testers, and increased satisfaction from the testers that they don’t encounter the red screen of death the Flutter can produce.

So I see only positivities in doing UI testing. I find bugs 🐛 easier, I have a good way to replicate issues and I can provide more stable builds to my testers, that again provide a better app for the users!

![The famous “red screen of death” produced by Flutter](https://cdn-images-1.medium.com/max/2000/1*-YNKSjUGMrua3IOT-J7P0g.png)

Now you might think 💭: “This must have taken a while to implement!”.

I can then surprise you by saying that Chemical Manager (the biggest of my apps) took me around 7 hours. 7 hours to write all my tests and test them 😅 This is an app with an authentication flow, multiple fetches, caching of network calls, and 14 unique screens (some are used multiple times).

I think it is well worth doing, it saves me time. I don’t have to release as many patches to my testers, since I catch critical bugs at an earlier stage.

It is still very important to test the app with testers, and real devices. Testers have the amazing ability to encounter some wonderful edge cases you didn't think of! But they do like to test something that is somewhat stable, and they like to test the new feature they are supposed to test. Not to have the authentication flow fail on them, because you forgot you moved a login controller, or the like 😅 (yes, I did that… I tried to be smart, and did not test it).

I hope you found this useful, go write some UI tests, be it for web, Swift/obj-c, Java/Kotlin, React Native or flutter. There is frameworks that does what flutter_driver does for all of them 😄 Good luck! 🍀 You will thank yourself for doing it, and so will your users 😊
