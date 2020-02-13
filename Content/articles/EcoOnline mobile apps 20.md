---
date: 2019-10-15 00:00
description: A description of my first post.
tags: react-native, flutter, javascript, android, ios
short: In the end of april in 2018, I published this article Building Eco Archive, a chemical safety app, with Expo
---
# EcoOnline mobile apps 2.0

In the end of april in 2018, I published this article Building [Eco Archive, a chemical safety app, with Expo](https://blog.expo.io/building-eco-archive-a-chemical-inventory-app-built-with-expo-eb0708c31cc8). Today (15.October.2019) I released not one but two 2.0.0 updates to Google Play and the Apple App Store. One of them is a complete rewrite of the Eco Archive app mentioned above.)

## Rebranding

First things first. It’s not Eco Archive anymore, it is Chemical Manager, and that new name is a renaming done by the company I work for 😁

But that new name did not come alone. We also got a new colour palette! 🎨 This happened this spring, and is one of the reasons I did a rewrite.

 <iframe src="https://medium.com/media/e41a74370aa087a2d98f57807cc19e1b" frameborder=0></iframe>

## The reason(s)

So why did I do a rewrite, and not a simple update to my existing code? Well, I was initially working on another project and I was working on it with my senior partner. He handed me some tasks, and after getting a long way on those tasks, it became apparent that those tasks relied upon other tasks that where still being worked on by my senior or other team members. This resulted in me having to wait to finish my task until those dependencies where done. ✅

I had also been looking 👀 at Flutter for a while, and now I had a excuse to play with it. I mean, I could try to learn something new while waiting right?

So I went straight ahead and built an authentication flow, a list to view products and a products detail screen. And I tested it with the worst case scenario we have available, and my proof of concept (POC) handled it like a champ 🏅. I then expanded on my POC, and tried to add persistence to the data, and store it offline. For those that are curious this accumulates to something around 300MB of data consisting of over 120 000 rows of data. I reached out to the Flutter community Discord and asked if anybody had any recommendations for achieving this. A pretty [cool dude named Luke Pighetti](https://medium.com/@lukepighetti) said I should look into [SQFLite](https://pub.dev/packages/sqflite) and after tweaking that I got it to work very well with my dataset.

This working well was critical, this is something we were not able to do with React Native with Expo at the time, since we had to use a local database of some sort. This differs React Native with Expo from Flutter, with Flutter I can use more of the native platform, but still get a way better developer experience then what I get from React Native by it self.

So now, with only the persistence of the product-list, I had something that was better then what our customers had.

## Summer

The original project I was working on went into holiday-mode. My team took out their vacations, but I saved mine for later. I was still missing some dependencies for my original tasks, so I grabbed the chance and ran with it, I worked as much as I could on the app so I had something cool to show my colleagues when they got back. And guess what, they loved it!

 <iframe src="https://medium.com/media/f6840ec4e7a86757add7da15497a6515" frameborder=0></iframe>

I could now put in even more hours into it, and so I did. I got the fantastic products-team to take a look at it, and they were amazed by what I had done over the summer. They found some bugs and missing features. Over august and September I’ve been iterating. Fixing bugs and added those missing features. But I also developed several new features that we could not do with React Native and Expo.

## Anywhere

My first breakthrough was the ability to persist everything. And we also have a module to our Chemical Manager product that enables users with a certain license the ability to download documents related to a product and to view them when completely offline. To do this, I first tried to use a public package that downloads files from a given url. I had some issues with that approach watching the progress of the download tasks did not work as expected, so in good fashion I created my own download package 📦 . It gives me some useful streams, one for the queue, one for all downloaded tasks and one for all failed downloads.

## Packages

This transitions over nicely to what I did very different this time around. Last time around we developed one package to rule them all. This package did authentication, fetching, some persistence, language and more. We planned to share this code between the web and the mobile app since both were built on JavaScript. In reality this did not work, the differences were too big between the APIs in the browser and React Native.

So in the 2.0.0 update I have rewritten all the business logic with Flutter in mind. Everything is now written in Dart, and this code is only meant to run on mobile. And I don’t have one package to rule them all either. I think of our apps more in terms of lego.

 <iframe src="https://medium.com/media/e831d372549517830cd6c8f2bcbb2120" frameborder=0></iframe>

I have a lot of packages that work independently from each other. This approach allows us to develop apps with more modularity, and it’s easy to combine packages with different features to get unique combinations. We could do this before, but every app would then include everything, adding bloat.

This is also very useful, since EcoOnline is an ever growing company. I collaborate with a mobile dev in Ireland, they have their own app, also built on Flutter. But because I have built our packages like legos, they use our language system implemented trough my package 😁 They also have plans to use the downloader package in the near future.

## Summary

So these are all the changes to EcoOnline apps in 2019. A total rewrite with a new technology, started kind of like a under the table side project. That side project is now in production, and the reception have been very good!

For what we can see now, Flutter has given us more control to use native libraries and functionalities, while still having an amazing developer experience. We have also learned that legos are cool, and the concept of legos work very well when you want to share code between products and departments in a company.

And lastly, if you are a customer, I hope you enjoy using this app (even though it is a very corporate app)! And going forward I have a plan to keep updating the new apps every two or three weeks. Squash bugs 🐛 and keep implementing new features for you to use!
