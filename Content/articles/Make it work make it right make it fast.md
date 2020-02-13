---
date: 2019-11-22 00:00
description: A description of my first post.
tags: flutter, javascript, react-native, swift
short: The title, is a phrase my mentor told me. And to be honest at the time, I did not think to much about it. I was like: “Yeah, that makes sense… (I guess💭)”. But the other day I started to think more about it, and realised how it had manifested it self during the last couple of months.
---
# “Make it work, make it right, make it fast”

The title, is a phrase my mentor told me. And to be honest at the time, I did not think to much about it. I was like: “Yeah, that makes sense… (I guess💭)”. But the other day I started to think more about it, and realised how it had manifested it self during the last couple of months.

As stated in this [post](https://medium.com/@brorbrurberg/ecoonline-mobile-apps-2-0-7b0b8d9055d9), I recreated a rather big app in Flutter and released it to our customers. At that point, it worked🎉! And that was the goal of it, It should work for our customers, and provide a nice experience. But I was kind of pressed on time (pressure mostly applied by me😅), and the focus were to only make it work.

After the initial release, I have dedicated myself to release an update every 2 weeks. Be it new features or just fixes and performance updates. So, since I can’t always spit out new features, I get time to fix issues, tweak code, be all nitty gritty 😁

I quickly realized; In my rush to release, I did not care to much about using compute methods, that is available in Flutter. With the compute function, you can move a task to a new [Isolate](https://api.flutter.dev/flutter/dart-isolate/Isolate-class.html). To shortly explain what happens when you do that: You move a task to a separate thread, with its own memory. By doing this, you can move heavy calculations away from your main thread. This is important beacuse, [Dart is a single-threaded language](https://www.youtube.com/watch?v=vl_AaCgudcY&feature=emb_logo@) and if you clog up the main thread, you will freeze the UI, and the user will notice that thinking you app is slow.

So I started to time a lot of methods, to figure out if something should be done on a seperate thread.

 <iframe src="https://medium.com/media/a3f3800142748ee1923573aa424bf409" frameborder=0></iframe>

And like most of you know, the goal with Flutter is to keep a high refresh rate. And try to keep it above 60FPS. That means you have (1000ms / 60frames) around 16,666666667ms/frame. So if your calculation takes more than 16ms you run the risk of stutters in you app, since this happens in the same place as where you run your UI code.

This is the making it right part. I think by moving heavy manipulations of lists and other costly calculations into compute methods, making the life of the main thread easier.

This is a good talk about why that is a good thing 😁 The talk focuses on the web, but I found it really useful non the less.

 <iframe src="https://medium.com/media/9a63a2ed903cebb73d19be3e58eb46a1" frameborder=0></iframe>

And now… Making it fast. I can’t give you a whole lot of tips here, since a lot comes down to know the tool you are using, in my case: Dart.

But I do have some tricks that helped me a lot! Like any application, my apps use lists of data. And like you need to do in a lot of lists, you need to look up that information.

 <iframe src="https://medium.com/media/bfca3d8a4589f9562e4a7d4c44165aa5" frameborder=0></iframe>

The example shows how I switched from using list of item, to a map with key/value pair of item.id as key, and the item as the value. In some cases this can yield huge performance gains. But, like I said: A lot comes down to knowing your tool. In Dart, you should make yourself very familiar with all the methods you can run on a Iterable. Methods like: map, fold and reduce can help you a lot 😁
