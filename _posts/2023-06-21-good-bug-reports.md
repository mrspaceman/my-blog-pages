---
layout: post
author: Andy Aspell-Clark
title: "Why good bug reports are important"
date: 2023-06-21
tags:
  - software
---

For those that arent software developers or testers; this post probably isnt for you. But maybe you want to find out what on earth I'm going on about. If so, then read on.

What is a bug report?

Well, when we write software, it always works first time and gives the users exactly what they want without any errors.

Now back to reality.

When we write software we do our best to make sure it is free from flaws/bugs, but no software project I have worked on has ever quite managed to be completely free from bugs when released.

As software engineers, we do our best. we add in unit tests which test small parts of the functionality in isolation. Then we write integration tests, which test that those individual parts of the code that the unit tests have assured us are working as we expect work together to form a whole.

once the software engineers have finished writing the code and the tests, we publish that  into an environment and let testers bash the system to find the issues that we missed.
