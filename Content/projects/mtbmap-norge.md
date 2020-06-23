---
date: 2020-06-23 22:21
tags: swift, swiftUI, project
short: I've gotten bit by the mountain biking bug 🚵‍♀️ and it's pretty much all I can think about during my off hours. I think about gear, my cardiovascular strength and of course planning my next ride. And the planning part can be quite hard from time to time. I live in a area with lots of trails to ride. But I feel like the trail riding community can be quite secretive about their favorite trails. I can understand that, they want their trails to be theirs😅
---
# MTBMap Norge (a openstreetmap trailguide)
I've gotten bit by the mountain biking bug 🚵‍♀️ and it's pretty much all I can think about during my off hours. I think about gear, my cardiovascular strength and of course planning my next ride. And the planning part can be quite hard from time to time. I live in a area with lots of trails to ride. But I feel like the trail riding community can be quite secretive about their favorite trails. I can understand that, they want their trails to be theirs😅

But I've found some resources that shows a lot trails in Norway. The site mtbmap.no pulls data from openstreetmap and adds some extra layers on top of that data to make it more useful. I've been using that map to plan rides. But it does not work that well when I'm actually out on the trails. I wanted to fix that problem, and that's where this project comes to life.

This app is a simple flutter app. I wanted it to be cross platform, because I have mountain biking friends on both platforms, and I know all of them want something like this.

I started sniffing out where the data on mtbmap comes from, and figured out that it's from openstreetmap and the actual data is just png files that work as tiles. I did a quick search on pub.dev and found a package that could handle this type of data from openstreetmap. I installed that and modified the URL from mtbmap and got the data I wanted. I added a search box and connected it to openstreetmaps api so that a user can search for a place in Norway and show trails in that area. I also pulled the location data from the device it self, so the user can center the map on their location! That last thing is super useful when I'm out in the trails! No more taking the wrong trail 😃 and a big plus! The map package added offline caching of previously viewed areas😄

This app took me about 5h to develop and it proved useful later the same day! It's not advanced, but it's very functional and serves a purpose for me and for my friends right now. I may want to make it public, I just need to get approval from the people behind mtbmap.no (I've contacted them)

This was a short post, but I just had to share this little project with someone 😅

Check out the app on the [AppStore](https://apps.apple.com/no/app/mtbmap-norge/id1519387034?l=nb)
    At the moment I'm waiting on the Google Play review. I will update this whenever it's available on the Google Play store 👀
