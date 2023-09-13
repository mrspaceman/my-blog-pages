---
layout: post
title: What does "Full Stack" mean?
date: '2019-02-04T06:16:00.000Z'
author: Andy Aspell-Clark
tags:
- software
- computers
---

I've been a software engineer for a little while and I see the term "Full Stack developer" more and more, but what does it mean?

Okay, let's walk through what a complete system will comprise of and see if we can work it out.

## UI
First (from the users perspective) is the UI. It's how they interact and really all they care about (as long as the application does what is expected of it. Here is a list of some UI technologies that I know of

* AWT
* Swing
* Qt
* Android XML
* MFC and VB
* OpenGl
* Vulkan

## Communication Protocol
Next up is the communications protocol (as most applications these days are a thin UI talking to a backend server (we've gone back to the mainframe era!)

* RPC
* FTP
* SNMP
* SMTP
* DDS
* ActiveMq/RabbitMq

## Network Layer
The communications protocol has to be transported between the client and the server somehow, so here we have the network layer

* IPX/SPX
* Token Ring
* Bluetooth
* USB

## Server

So now we have data being transferred between the UI and the server, but it can't just appear at the server, there's software to write.

## API

there have to be endpoints that can accept the requests from the UI, so here we have the server side of the network protocols

* RPC
* FTP
* SNMP
* SMTP

## Processing / Storage

And here is where the actual work gets done, here is where we put the "Business processing" and store data for later use. Business processing can be done in any language, COBOL used to be the top, but I'm pretty sure it's not used that much in modern applications (so much for my diploma project). But it could also encompass larger technologies and not just the language used.

* PL/8
* Fortran
* Smalltalk
* Ada

* CUDA
* Beowulf
* MPI
* OpenCL

And data has to be stored for later use:

* Structured data
* Unstructured data
* Bitstreams
* HEX dump

## OS

All of the above technologies sit on top of an OS, which is (normally) a very complicated beast (actually QT can run on the bare metal, but then it's acting as the OS).

Kernels can be broken down into quite a few different categories such as monolithic and microkernel and distributed to name a few. but the kernel is only part of the OS, there are a whole host of other parts (memory management, filesystems etc...) without which the OS would not function.

This is a whole series of articles in itself (which I may go into one day), but there are many OS's/Kernel's out there which could be used

* Amoeba (distributed)
* Plan 9 (distributed)
* AIX
* Mach
* HURD
* L4

## Conclusion

One thing I have deliberately done in the above sections is (try) to avoid mentioning any of the technologies typically
associated with a "Full Stack" developer. I doubt that any developer would be an expert in writing the assembly code to
get a CPU to boot, initialising the MMU (and other CPU's in an SMP system), then writing all of the drivers so that the
OS is ready for an application to be written on top of it.

and why develop all of these things when there are so many options out there? So what does this oft used term mean then?



from what I have seen it is actually referencing a very specific and narrow set of technologies. Namely Java, Javascript and HTML (and maybe docker or kubernetes and node).



but here again, we are being far too vague (well HTML is okay)



when someone says they __Know__ Java, I can bet you that they don't. What would happen do you think if I was interviewing a "Java" developer and asked them how they would store a list of objects in a JavaME application? Yes, I know some would be able to answer it, but how many "Full Stack" developers would?



or how much storage they would typically have for a **JavaCard** application? or how about quizzing them about their AWT knowledge?



I'm pretty sure that they would flounder, yet all of these are part of Java. There are also the libraries and frameworks that go along with Java like Spring and JBoss, so anyone who says they "know java" can be considered to be stretching the truth.



It's the same with Javascript, any advert that ask for "Javascript" really mean Javascript plus quite a lot of the thousands of Javascript libraries out there. but which ones?



So what does Full Stack really mean? as far as I can tell it's just another meaningless buzzword used by recruiters to make them sound like they know what they are talking about.
