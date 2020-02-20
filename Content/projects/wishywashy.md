---
date: 2020-02-20 00:00
tags: swift, swiftUI, project
short: Over the last month I’ve been working on a little pet project. That pet project is called “Wishywashy”.
---
# Wishywashy — independent app

Over the last month I’ve been working on a little pet project. That pet project is called [“Wishywashy”](https://apps.apple.com/no/app/wishywashy/id1497023679?l=nb).

So what is [Wishywashy](https://apps.apple.com/no/app/wishywashy/id1497023679?l=nb)? It’s an app (duh😅) for helping me a couple of times a year. More specifically at gift giving occasions. For example; come Christmas, a close relative will ask: “soooo, Bror what do you want for Christmas 🎄 ?”, and more often than not, my answer is “I don’t know”. And again more often then not I do actually know, but I struggle to remember it 😓

So I figured I wanted to play around with SwiftUI and Firebase. And here we are 🤪 if you are reading this you can go download my app on the AppStore, and start organizing your wishlist, share it and look at others wishes 🤓

This is my first app released from me as a individual and not created by me for a company! It feels kind of scary, and I found it valuable to go trough the app launch process again, and with new aspects I haven’t worked with before.

Talking about these new aspects, you might wonder what those are. Monetization… that is the word! Firebase have a cost to it after a curtain point. And it would be awesome if this app could pay for itself, so I needed to monetize it. It is hard to find a way to make money, and everything feels wired and like a compromise. I think I landed on the best compromise I could; Ads and a way for the user to pay to remove said ads 💸.

I don’t like ads, I run ad-blockers and all sorts of software and settings to block tracking. So when setting up my ads I first tried to find the ad platform Apple had called iAd. I have heard iAd is pretty bad, but I want the least creepy ads possible 🧐. I quickly figured out that iAds have been discontinued, and I had to settle for Google Admob. Really because this was the only other ads framework I knew about. But I do not like that I have to use Admob, but I at least have a lot of options on that platform! So, for my settings on Admob, I’ve tweaked them to the least creepy options I can 🎉.

And that brings me to the next topic that is privacy releated. Firebase, yet another Google product. I’ve of course heard about Firebase before, and a friend of mine have had some good experiences working with it. Firebase also have pretty good documentation for Swift so I figured I should go for that platform for my storage.

When setting up authentication with Firebase you have a lot of options; email/password combination and the possibility to use a lot of 3rd party options like GitHub, Google, Apple and more… Since I like to keep privacy to a max, and I’m only planning to release this app on iOS, I wanted to just use “Sign in with Apple”, and there the authentication part was done. Apple Sign-in allows the user to withold their email and give me just a address that forward to their correct email, but I don’t know their real email 😊 That is perfect for me! The less I know, the better! When the user authenticates with Firebase I create documents for the user in my Firebase Database, allowing them to create new wishes, edit and delete them.

Surprisingly the development of the app, is what took the least amount of time. I tought this would take more time, since I don’t have too much experience with that framework yet (or native development in general). Luckily SwiftUI is another reactive framework, and have a lot of familiarites with React Native and Flutter, which I’ve been working professionally with in various degree. That knowledge transfered pretty nicely over to SwiftUI, and the core of the app was built in a couple of weekends and over some evenings after work.

And then we are over to the release proccess. If you have ever launched something to the app store you know there are a lot of fall pits there. You need to check all the right boxes, and cross your fingers that the human reviewing your app have the same understanding of things that you do.

Example of this: My first try to release this app, of course ended in a rejection from the app store. My app triggered the rule “1.1 Legal: Privacy — Data Collection and Storage”. The app gives you the ability to login, create a list and share it. But Apple tought that you should be able to use the app even without logging in, so I needed to rethink a lot. I’ve landed on CoreData and if you want to use the app without logging in, you can now do that. The list will be stored locally until you log in, then I sync it.

There was also a lot of more work to do with my app than any other app I’ve published for a company. This app have In-app purchases, so you need to do a lot of paperwork (Apple makes this pretty easy to do, but it is still something you have to do).

The takeaway for this project for me is. The 80/20 rule applies to this to… I should have predicted this tho. Actually developing the app was 20% of the time I’ve been working on this project. The other 80% is managment, paperwork, batteling the AppStore and AdMob. It have been a learning experience tho, and I’ve learned a lot from it. Just not what I expected 😅I expected to use more time on SwiftUI and having a harder time with that.

If you wanna test it out, or this app sounds like something you want, check it out on the [AppStore](https://apps.apple.com/no/app/wishywashy/id1497023679?l=nb)

On another note; I’m also working on the [#100DaysOfSwiftUI](https://www.hackingwithswift.com/100/swiftui) challenge, and can say that this is worth your time doing if you want to learn SwiftUI. It is max 1 hour a day, for 100 days, gradually diving deeper into Swift and SwiftUI, have fun with that!
