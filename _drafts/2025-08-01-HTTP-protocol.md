---
layout: post
title: The HTTP Protocol
date: 2025-08-01
author: Andy Aspell-Clark
tags:
- computers
- software design
- job hunting
---

# Or "What happens when you type a URL into your browser"

I have been asked this question in a coupe of interviews now and I dont think I've given an answer that the interviewers wanted, so I thought I would write up an article on it to help others.

To answer this question there are a number of levels we can go to here.

## The first and high level would be:
1. your browser goes to a DNS server to get the IP address of the server that hosts the URL you typed in
1. your browser connects to the server using the IP address and requests the page you asked for
1. the server sends the page back to your browser
1. your browser renders the page and displays it to you
```mermaid
sequenceDiagram
    User ->> LocalBrowser: www.google.com
    LocalBrowser ->> DNS: IP Address for www.google.com?
    DNS -->> LocalBrowser: Heres the IP Address
    LocalBrowser -) IpAddress: Request Page
    IpAddress -->> LocalBrowser: Here is the data stream for that page
    LocalBrowser -->> User: Here is the rendered page
```

Now this misses so much detail, but as I think I bombed on this question in interviews for going into too much detail, if all you want is to be able to answer this in an interview you can stop reading here (and I hope that the above answer works for you.)

But if you want to know more detail of what actually happens when you type a URL into a browser, then continue reading. Now there is the OSI model, but I will go into that later, for now lets look at what really happens when you type a string into your browsers URL bar.

1. the browser will (these days) have a look at the string that you have typed into the address bar and see if it thinks it is in fact a URL.

If it thinks that the string you typed in is not a URL, then it will perform a search for that string.

If the browser thinks that the string you typed in is a URL, then it will start the process of retrieving the data and displaying it to the user, and this is where it gets very complicated.

so the browser is an application running on top of an operating system, so the browser itself doesn't talk directly to the network, instead it calls an function in the operating system kernel to get the ip address for a url. That sounds simple enough, but in the (linux, I'm not so sure about windows) kernel there are (at least) two layers, User mode and Kernel mode. the applications; in this case the browser; is running in User mode and that helps the kernel maintain security by not allowing applications to read/write memory and other system parts that are "owned" by other applications.

But we are not going to go into kernel architecture here, we just need to know that there are multiple parts as the browser application will make a request to get the ip address of a URL and the user mode of the kernel will talk to the kernel mode. the kernel mode will make sure that all of the applications that are requesting network data can all talk over the network interface at the same time and only see the data that they have requested.

So, to get the IP Address of a url it looks a bit like this:
```mermaid
sequenceDiagram
    User ->> LocalBrowser: www.google.com
    LocalBrowser ->> UserModeKernel: IP Address for www.google.com?
    UserModeKernel ->> KernelMode: IP Address for www.google.com?
    KernelMode ->> NetworkStack: IP Address for www.google.com?
    NetworkStack ->> NetworkInterface: Send packet onto network to request DNS entry for URL
    NetworkInterface ->> Internet: IP Address for URL?
    Internet -->> NetworkInterface: Here is the IP Address
    NetworkInterface -->> NetworkStack: Here is the IP Address
    NetworkStack -->> KernelMode: Here is the IP Address
    KernelMode -->> UserModeKernel: Here is the IP Address
    UserModeKernel -->> LocalBrowser: Here is the IP Address
```

How the kernel handles all of the applications that are talking to the internet at the same time and makes sure that each application only gets the data it requested is far beyond what we will go into in this article.

NoWhat I hope you also noticed is that I've skipped over the "Internet" part in th eabove diagram.

The internet part is actually a bit complex (as if it's been simple so far)




## OSI model




