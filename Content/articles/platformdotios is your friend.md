---
date: 2019-06-08 00:00
description: A description of my first post.
tags: flutter, android, ios
short: Very recently I’ve started to port a existing react native application to Flutter. It’s going really good and I’m very happy with the progress so far.
---
# Platform.isIOS is your friend

Very recently I’ve started to port a existing react native application to Flutter. It’s going really good and I’m very happy with the progress so far.

I just wanted to write a little bit about a new friend I’ve gotten: Platform.isIOS.

This new friend hides out in a lot of widgets, and I’m glad I’ve befriended him!

It started right at the beginning of the porting process. The react native app is a typical cross-platform application. It shares basically the same UI cross the board. Flutter kind of didn’t want me to do that. In the react native app, the bottom navigation bar is always at the bottom of the screen. And when I tried to port that to Flutter the Flutter/material package resisted. Simply because this is considered a bad UX by material guidelines

That’s fair. That’s Google’s guidelines for user interface designs. What trips me up is that I also build for iOS. And iOS follows the human interface guidelines, and Apple wants you to follow their guidelines. And I thinks that’s fair to.

My dilemma then was, I want to deliver what my users expect of an application. Including how they look and feel. So I needed to adopt both CupertinoApp and MaterialApp. The problem is that not all widgets are compatible with both of these classes, so I needed to check for what platform my code is running on, and render out different widgets.

I thought that this would be a pain. But honestly; it’s not. You just need to plan out what you need to separate out in different widgets. You also need to make some wrappers for some functionality. For example: in my lists, the users can usually tap a cell in the list. But for MaterialApp I want to use Inkwell, but I can’t use this in CupertinoApp. In CupertinoApp I need to use a GuestureDetector. So I created a widget that takes a child and a onTap function and passed it down to the correct wrapper based on the platform ✌️

The result is a codebase that renders apps that follows the expected UI and UX for the end user. And yes, I have to write some UI multiple times, but honestly it’s not too bad. There still is a whole lot that works perfectly on both platforms without any custom code 😄
