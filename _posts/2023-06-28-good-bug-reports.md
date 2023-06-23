---
layout: post
author: Andy Aspell-Clark
title: "Why good bug reports are important"
date: 2023-06-21
tags:
  - software
---

For those that arent software developers or testers; this post probably isnt for you. But maybe you want to find out what on earth I'm going on about. If so, then read on.

### What is a bug report?

Well, when we write software, it always works first time and gives the users exactly what they want without any errors.

_Now back to reality._

When we write software we do our best to make sure it is free from flaws/bugs, but no software project I have worked on has ever quite managed to be completely free from bugs when released.

As software engineers, we do our best. we add in unit tests which test small parts of the functionality in isolation. Then we write integration tests, which test that those individual parts of the code that the unit tests have assured us are working as we expect work together to form a whole.

once the software engineers have finished writing the code and the tests, we publish that system into an environment and let testers bash the system to find the issues that we missed.

_Now comes the fun part (and the reason for this post)._

On a project I am working on, we recently had to let one of our users do some testing for us. They are not a tester, nor a developer, they are a user of the system. This is good and bad. It's good as they will use the system as a 'User' will use it.

When a technical person (tester / developer) uses a system, they have an understanding of the underlying code/logic that they are using. This can lead to certain assumptions and decisions made when entering data that can miss some issues.

But when a user users the system and find an issue we have a problem when they report it.

What is needed from a bug report is some information on how the developers can find the same bug so that they can have a look at the underlying code and find out why the bug is happening. so they need to see exactly what the user did and exactly what data the user entered to cause the bug.

More often than not though the user will simple say something along the lines of "I clicked the button and it didnt work". Nicely concise, but missing some important information. what the User has failed to understand is that we were not looking over their shoulder when they hit the bug. we didnt see what page they were on, what data they had entered into any input fields, and whether they just mashed the keyboard to see what would happen.

The problem was that this user was an influential user and so his comments got raised as bugs. This led to lots of back and forth between the devs and the user to work out what they user had done to find the bug and what they user was expecting to happen.

Now, if the user had raised a nice, concise and complete bug report, then we could have investigated the issue much quicker and probably fixed it quicker too. but, what is a concise and complete bug report.

Well, I have my idea (and it will very likely be different to a lot of peoples ideas of a bug report). For me, as a developer, I want to be able to identify where in the code the error is likely to be happening, so I need information on what the user was doing when they encountered the bug. and very often a bug will occur because of some data that was entered, so I'd like to know the data that the user entered running up to the bug. 

so a bug report to me would contain the following information:

1. What version of the application was used (if known)?
1. What environment the error was encountered in (dev/test/production/...)?
1. What the user did? e.g:
    * did the user click a button
    * were they entering text into a field
    * were they picking a date from a date picker
1. What the user expected to happen? 
1. Where in the application did the error occur?    
    * the 'name' of the page where the user encountered the error
    * if this is a web application, the url would be helpful
1. If the user was pressing a button to submit some information, what information was in each field?
1. User contact details. In case more information is needed 

With this information, I can run the application locally (the specific version if it's specified in the bug report), then I can enter the same data and do the same actions to see if I can recreate the issue. if the same issue occurs locally, I can step through the code and pinpoint exactly where the issue is and (hopefully) fix it.
What I would also do is add a test to make sure that scenario is tested in future and doesn't get broken by any future changes. 

Without all of the above infomation, it will take longer to fix issues as developers will need to go back to the user and ask all of the above questions so that they have enough information to work on the bug.

So in conclusion, if we all want the software to be written as quick as possible (and who doesn't), then anyone who raises a bug report needs to include the above information, and that includes testers, other developers and users.

It is made easier if you can include a template into any bug reporting software to prompt people reporting bugs to enter the information.

So please, everyone educate your testers/support teams/users on the information that is required. but don't just tell them what information you want, tell them why so that they understand the reason they need to enter so much information when reporting bugs.
