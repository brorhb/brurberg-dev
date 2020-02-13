---
date: 2018-04-27 00:00
description: A description of my first post.
tags: react-native, swift, javascript, android, ios
short: Hello, my name is Bror. I just landed a contract with a company called EcoOnline (in Tønsberg, Norway) as a junior developer. EcoOnline is an IT company dedicated to develop software to improve and simplify chemical safety.
Eco Archive is the mobile adaptation of the web app, intended to make information about different chemicals easily accessible for employees in different companies.
This is the story on how this app came to life, and the journey I had developing it.
---
# Building Eco Archive, a chemical safety app, with Expo

Hello, my name is Bror. I just landed a contract with a company called EcoOnline (in Tønsberg, Norway) as a junior developer. EcoOnline is an IT company dedicated to develop software to improve and simplify chemical safety.
Eco Archive is the mobile adaptation of the web app, intended to make information about different chemicals easily accessible for employees in different companies.
This is the story on how this app came to life, and the journey I had developing it.
## How it started
Last summer and autumn, I was working as a trainee at EcoOnline. I would recommend all aspiring developers to get an internship while you take a degree (YMMV), which is what I did. But back to the story. We were initiating a new project in autumn to revamp the user experience of our platform (amongst other things), which included refreshing our old mobile app for our existing customers.
I got the responsibility for the mobile app, and this became my bachelors degree for my final year of university. The task was to refresh the old app in any way I wanted. Make it user-friendly, explore new technologies, learn, and get it done by the end of Q1 of 2018.
## The old app
<img src="/images/building-eco-archive/everywhere.png" alt="JQuery everywhere"/>
Enough said…
## The story of the new app
When starting the development of the new app, I didn’t want any connections to the old app, other than the name. (I couldn’t choose the name, or else I would have thought of some clever hipstery name: something like…Ecotron!)
When I started university, I wanted to be a mobile developer. This was my motivation and my goal. I had zero experience prior to uni, and my best skills were located in web development. During the last year, I’d accumulated some skills with both React and Vue.

### Hybrid efforts
Since my latest project included Vue.js, I started mocking up and prototyping the app with Cordova and Vue. About one month in, I realized the shortcomings of these hybrid apps. I just could not get a native feel to the app, but now at the end of January, I didn’t have the time to look into pure native stuff like Swift and Java/Kotlin. I certainly didn’t have the time to make two codebases.
### React Native over Hybrid
I’d heard of React Native, and I had some skills and proficiency with React. I started to look into it, and over the weekend I had made a quick little proof-of-concept, using React Native and Expo.
Monday morning, I took my prototype made with Vue and Cordova, booted it up on the simulator, opened Hyper, and typed in exp init EcotronNative (Yes, I used this cheesy name 🐝).
I started rebuilding the Cordova app into a React Native app using Expo. This was in the last days of January, and I had only through March to finish 😰.
### Working with Expo
I had about two months to finish this app (read: implement features and get it ready for testing, though some external pushback got the release postponed to end of April). I wanted to have the app in a release-ready state by the end of March, so that the last weeks could be devoted to quality control.
I want to praise Expo for the work they have done! I don’t think I could have done it without Expo.
All my data came from our own APIs, so my job was to present it in a clever way. I realized I wouldn’t need any other external packages or APIs that Expo doesn’t yet provide.
The Expo documentation is great, and is miles ahead of the React Native documentation that can be outdated or simply missing. The Expo docs have good examples with great value. It’s a good way to see real-world examples of what you want to achieve, and how to implement them.
Within a couple of weeks I had the critical functionality done, and the app just felt so much better than the hybrid!
<img src="/images/building-eco-archive/app.png" alt="Overview of the EcoArchive app"/>
Overview of the EcoArchive app
### How I released production builds and betas
During the development period, I got some bad news: due to new limitations on Expo’s iOS client, I had to resort to TestFlight. But given the nature of how Expo serves the build.js, I needed to differentiate a beta and a production build. And this is the time I realized Expo has a release channel functionality, so now, all my production builds are built using:
```
exp build:android --release-channel prod && exp build:ios --release-channel prod
```
And all my beta builds using:
```
exp build:ios --release-channel beta && exp build:android --release-channel beta
```

The versioning is done by GitHub, so when I want to make a build, I branch out from master to freeze a state of the project, and run a beta build. This is distributed to my testers, and potential fixes are applied to the branch, and redistributed by running exp publish --release-channel beta.
When the testers give me the go-ahead, I run the production commands, and publish this build.
The changes made to the branch are now pulled back into the master branch, and I can continue the work on the next version.
## Summary
Working with React Native and Expo has been a fun experience. I’ve learned a lot, and my workplace now has a new app on the App Store and Google Play. And now I just need to write my report for my degree. I’m looking forward to the summer when I’m done with school and can work full time as a junior at EcoOnline and be their «app-guy». I will continue using Expo, and can’t wait to hear their talk at React Native EU 2018 in Poland. I’ll be there, and I hope people reading this will too!
Also thanks to the team around me, providing awesome APIs, and thanks to my mentor for teaching me everything I know!
