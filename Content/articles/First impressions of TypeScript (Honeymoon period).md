---
date: 2019-01-21 00:00
description: A description of my first post.
tags: react-native, javascript, typescript
short: I’ve been meaning to try TypeScript for awhile now, but I’ve never gotten the opportunity until now. I got some time to work some more on the mobile application I made during my degree.
---
# First impressions of TypeScript (Honeymoon period)

I’ve been meaning to try TypeScript for awhile now, but I’ve never gotten the opportunity until now. I got some time to work some more on the mobile application I made during my degree.

This project is perfect for trying out some new technology. I know the codebase, since I wrote it all. I have some metrics over errors coming for Sentry.io, and the project is written in React Native.

From Sentry I know that most of my errors that end in a fatal crash has its origin from some sort of `TypeError`. This combined with my new born passion for Swift pushed me into trying TypeScript. And so far I find it really useful in a couple of ways, even some unexpected ways too.

For starters, I hopefully have less TypeErrors now after switching some components. I’ve started in the small, and my project supports both TypeScript and regular JavaScript. This way I can convert the project component by component. I am supposed to create a new feature, and this is the first component to receive the facelift. The next is my biggest list component, that is also spawning the most errors.

Most of the TypeErrors is starting to vanish, because of TypeScript interfaces. A interface describe what an Object should be including, and what types the attributes should be. I’ve been creating interfaces for a couple of arrays of objects that I receive from an API. Creating the interface also lets my editor suggest my next dot-notation down in the object, shrinking the chance of a good’ol typo. I’ve also been able to single out a couple of data-points that have been moved in a newer version of the API, also fixing some minor problems for some users where some information did not show.

One unexpected positive thing note also releated to API stuff. Changes can happen alot on the API-side, especially on alpha and beta levels. My colleague recently asked me “What information from API X do you use?”, before it was kind of hard to tell him, I had to skim trough the code. After TypeScript, I know exactly what I use, where I use it and what I use it for. I did not foresee this outcome.

As a summary; I’m in my honeymoon period with TypeScript in combo with React Native. But as of now, I really like it! I get kind of the best of both worlds. As a lone mobile developer, I can develop fast for multiple platforms with React Native, and now I can develop a bit safer and with less errors although a little bit slower, because TypeScript challenges me to really think trough a feature or function in a way I did not before.
