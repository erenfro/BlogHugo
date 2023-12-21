---
title: "State of DisplayPort in Linux"
date: 2022-08-25
draft: false
description: "The problems and state of DisplayPort support in Linux"
tags: 
  - Linux
  - DisplayPort
categories:
  - Linux
---

# Display Port in Linux

So, I finally had the money, and GPU costs were finally starting to come down, sorta kinda, and I wanted out of the Nvidia ecosystem for good, and the local computer stores had an ASUS RX 6700 XT Dual, which I ultimately ended up using to upgrade from my nVidia GTX 950 which was starting to definitely feel its age. And while the performance was literally night/day difference, there was a new and unknown problem occurring with this upgrade.

## DisplayPort...

I'd be using DVI for the better part of the century and it's always been reliable, albeit annoying as heck to deal with, but reliable in every way. Power saving, fast response, etc.. But they don't make GPU's with DVI anymore. It's all HDMI and DisplayPort, and mostly DisplayPort. The card I got was 3 DisplayPort and 1 HDMI in fact.

## GNOME

I was using Fedora 36 with GNOME at the time, and I'm a die-hard supporter of Fedora and GNOME since 3.x mind you, having abandoned KDE since the early 5.x days (more on that later).

The new problem I had was quite remarakable, and I'll not go through all the details, but the overall result of my findings on this matter, and keep it nice and simple.

Because the screensaver would kick in and power down the displays, for some reason GNOME's tracking of that monitor just vanished, and windows that were on that display would move to another display. It gets better.. If both displays were connected to DisplayPort, things would massively become a cluster of migrations and even to the point displays would be swapped, about. In a 3-monitor setup in fact, this became quite impossible to deal with.

But it still gets better. GNOME's screensaver did one more thing that was unexpected and even worse. It would continuously power down the displays, and for 10 seconds it would stay that way... But then they would power back up for 5 seconds, then power down again. This would repeat, for hours, all night long every night. I'd often come back to a computer that was locked up from this situation, constant power cycling of displays and GNOME and GDM losing their minds about it.

## KDE

So, I decided on change... KDE, let's see if they've solved this problem. Afterall, many people tried to claim some of my problems with KDE was just because of nVidia, so, were they right? 

Oh no. Things were far worse in KDE with DisplayPort in play. I could just use the lockscreen keyboard shortcuts and within seconds unlock the screen and they'd already be shifted/swapped around. I don't think it did the same power cycling situation as GNOME did, and I did run it overnight 3 nights, and experienced no lockups, so at the very least, this was some form of progress.

## Something Different

Finally I decided to try my tried and true trusty backup plan. XFCE. While it's not 100% perfect, it's 99% of the time accurate and reliable, and when it does manage to somehow lose a display and move things over, I can use the keybinding to re-enable the proper display Profile of my choice and usually things move right back into their places.

I'm not really sure what's going on with the current state of DisplayPort support in Linux, but apparently these are not only my problems. I've spoken to many others that have seen similar issues with it, and it surprised me. But I am glad I found a solution in the time being in one of the fastest reliable desktop environments still available today, XFCE.

-- Psi-Jack
