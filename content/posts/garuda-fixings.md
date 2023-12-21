---
title: "Garuda Fixings"
date: 2022-09-07
draft: false
description: "Report it, fix it, merge it!"
tags:
  - Linux
  - Garuda
categories:
  - Linux
---

So I've been working on Garuda Linux now for a bit, and started doing deep dives into the core parts of what makes Garuda... Well, Garuda. How it's configured, how it's packages are done, how it's tuning things. Why it's doing that annoying thing with Firefox that I don't like...

## Unlockable XFCE

And so far, I've been making headways of changes to fix the concerns I have actually found. ONE of which I actually created byself by accident, (thanks Manjaro!) but it would've been nice to be not so ignored by the Garuda XFCE maintainer about it, so I would've found it faster? Well anyway, My Manjaro backup included light-locker from LightDM, but XFCE was already running it's own xflock4. Together this made for a very unlockable system to the point I had to kill Xorg anytime they both activated.

## Clobbering nsswitch.conf

That problem solved however, it was time to move to the next issue... One that's still in deliberation and work, however. The clobbering of nsswitch.conf. Where Garuda has a specific pacman ALPM hook inplace to replace whole parts of /etc/nsswitch.conf, stripping out systemd parts (so no systemd-homed), and re-writing how hostname resolution works entirely, anytime the `filesystem` package is ever updated. NOT COOL! Ideally of course this should be a one-time fix to set it how you want it initially at installation, and leave it alone thereafter. Or just switch to systemd-resolved and solve a different can of problems as well.

So, we'll see where that goes in due time, it's still a nice work in progress, but clobbering nsswitch.conf is definitely a no-brainer bad idea, especially to outright force it a certain way entirely.

## Alacritty?

So the next one was... Why in the blazing sun is garuda-gamer making me have alacritty installed for no reason? 

Turns out, it was packaged as a dependency for it. But why even then? garuda-libs, the real culprit. I found this one out by accident when I moved all my system-tray applications to run as systemd user units, because then they didn't have certain environment variables that garuda-lib's launch-terminal didn't have, the XDG_CURRENT_DESKTOP was originally providing xfce4-terminal as a scripted default when it was XFCE proper. But this was lacking when it did not have this environment, and defaulted to term_order which started with alacritty.

Ultimately, it was said that alacritty was intended to be a fallback terminal, but what was really happening was, garuda-gamer needlessly depended on it and was fixed, and I was able to uninstall alacritty without removing garuda-gamer with it.

## Noisy Firefox

So, the last bit was most infuriating when I learned of it. garuda-browser-settings changes some configurations of firefox defaults. Branding, default bookmarks, I can accept those, but they changed SSL enforcement to be on by default, and anytime you went to a website that didn't have SSL, it would tell you about it first, and make sure you really wanted to do that.

I was given a few places to look about this, to insure it was put in the installer as an explicit install (which it already was) in the ISOs, and to move it as an optional dependancy in garuda-common-settings, to keep it from being orphaned in general, so I put in my first Garuda Linux merge request, and got that fixed, and could finally remove garuda-browser-settings, which would've configured other browsers I didn't want it to. :)

What will I spot next to fix hmmm? ;)

-- Psi-Jack
