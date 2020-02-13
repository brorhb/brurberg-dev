---
date: 2019-12-16 00:00
description: A description of my first post.
tags: flutter
short: A couple of days ago, I stumbled over this tweet, and I could not stop thinking about it. Soooooo, during lunch today I started to mock it up using Flutter 💙
---

# Guess the hex

A couple of days ago, I stumbled over this [tweet][https://twitter.com/guamhat/status/1205982293787103234?s=21], and I could not stop thinking about it. Soooooo, during lunch today I started to mock it up using Flutter 💙

So after working on it for 30min during lunch 🥗 and a couple of hours when I got home, this is what I got 😅

![](https://cdn-images-1.medium.com/max/2048/1*OSW5yNYyRwXZICiym3ctjw.png)

I was a fun little project, and might be the closest I’ve done to “speed-coding”, but instead of making an interesting UI like those speed-coders do, I tried to make some logic to go with my simple UI 🤓 I was a fun challenge, and I got to work with things I usually don’t work with, I usually don’t work with colors, especially in this way 🎨

So to the code! The logic I fairly simpel. I needed a GameState and I like to work with the [Provider package](https://pub.dev/packages/provider) 📦 so I went with that package, since I tried to do this quick. I also needed streams in this app, so I just added [RxDart](https://pub.dev/packages/rxdart) right away. So my main state will be held in the GameState class with a ChangeNotifier, but since I want the win state and error state to be easier to listen to, I made those parts as streams. I’m sure there is a more effective way, but hey — this is me trying new stuff 👀

So what do I have in my state holder class? (I won’t post the whole thing, just pseudo code).

<script src="https://gist.github.com/brorhb/262fdbcf2f141a2caf37e51a3b351ac3.js" charset="utf-8"></script>

This is the engine that makes this app work 😅 It’s not much, but it is enough.

But… I have one problem with Provider. I have not found a good way to listen for a change, and then spawn a SnackBar og AlertDialog. That is why I added some streams to this mess 😁 With the streams, I can set up something like this:

<script src="https://gist.github.com/brorhb/fcc2a8dcee89d9ca5e1b64b3cbb24357.js" charset="utf-8"></script>

I’m sure there is another solution to the Future.delayed(Duration.zero, () {}); hack, but it works 😅 I haven't combined ChangeNotifier with streams like this before, but now I can come up with a couple of use-cases in my productions app 😁

Today I also learned about CIEDE2000 as a way to calculate the distance between two colors. Of course I did not do this myself, but I wanted to know a bit of how it works, and I was pleasantly surprised that there was a Dart package for this (uploaded 9.dec 2019! Just my luck 🎅) called [delta_e](https://pub.dev/packages/delta_e)!

I also had to create an extension to Color, so I could take a string and try to create a color from it credit to this [post](https://stackoverflow.com/questions/50081213/how-do-i-use-hexadecimal-color-strings-in-flutter) for explaining how to create a color from hex and visa versa. I just added a Exception to it if the input is totally invalid and some generic error…

<script src="https://gist.github.com/brorhb/8749ff9284567131960e7642e3dd7c0e.js" charset="utf-8"></script>

This was a short one, but I had fun writing this app, and I actually learned something I can take with me into my production apps. I think this is why playing and having fun with something is important to improve 😁 I hope you got something out of reading this, maybe you want to create this app too? 👀🎨

