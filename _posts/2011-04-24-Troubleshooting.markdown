---
layout: post
title: Troubleshooting Computer Problems
description: computer problems and troubleshooting
created: !!timestamp '2011-04-24 10:00:00'
tags:
    - linux
    - arch
---

Yesterday, as I went my merry way tinkering with my computer as I usually do, I rebooted, only to see errors abound. Having only slept the minimal amount of sleep needed to stay alive, I grew impatient and nearly, in an impulsive move, reinstalled everything. 

<!--more-->

But I stopped myself when it occurred to me just how much work had gone into configuring this system. I certainly hadn't the time to reconfigure *everything*. The problem I'd encountered yesterday had happened once before, but rather than patiently figuring out what it was that caused the problem, and finding a remedy for it, I maniacally re-installed everything.

I blamed GNOME, harassed KDE, and worst of all, broke up with subtle wm. 

I decided that wouldn't be the case *this* time around.

So on I went in my ever so merry adventure of turning off daemons, changing configurations. It wasn't until I'd stumbled upon a couple of Arch bbs posts that I finally figured it all out. After reading through a wiki page, I found a solution. No reinstall necessary.

### "No space left on device"
The problem was that when I had installed Arch, I neglected to read the part in the beginner's guide that went over partitioning. I didn't realize that 10GB apparently wasn't enough for a root partition, especially for my uses. 

The <code>/var</code> directory was the culprit. It had filled up because I hadn't bothered clearing the cache folder pacman keeps. Just a simple command fixed my problems.

<pre>pacman -Scc</pre>

This started a cli prompt asking whether to clear the cache. 

And all my (computer-related) problems were ameliorated. Now if I could only issue a command on myself to stop being so dramatic. 

<pre>/etc/rc.d/drama stop</pre>

Wouldn't that be so easy? 
