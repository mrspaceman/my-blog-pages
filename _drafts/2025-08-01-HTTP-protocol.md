---
layout: post
title: The HTTP Protocol
date: 2025-08-01
author: Andy Aspell-Clark
tags:
- computers
- software design
---

# Or "What happens when you type a URL into your browser"

There are a number of level we can go to here.

The first and high level would be:
1. your browser goes to a DNS server to fget the IP address of the server that hosts the URL you typed in
1. your browser connects to the server using the IP address and requests the page you asked for
1. the server sends the page back to your browser
1. your browser renders the page and displays it to you

But this misses so much of what actually happens, so let's go into more detail.


