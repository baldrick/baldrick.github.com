---
layout: post
title: "Networks"
description: "It's drafty round here..."
category: Tech
tags : []
header-img: "images/network.jpg"
---
{% include JB/setup %}

It's the start of 2016 so time to clear out some draft posts I had.  Here's one I mostly wrote in January 2015 about my home network... IMHO, with a little editing just now, it's good _enough_ to post.  I hope you agree.

# The home network

I won't go into the why's & wherefore's but my home network isn't the usual modem + computer.

It's grown from a single 5-port 10Mbps router (for a couple of computers) to a string of boxes supporting varied devices.

In late 2014 I upgraded to fibre internet.  Wallop!  Up from around 5-6Mbps to 74Mbps.  Sweeeeeet.

But recently I'd noticed it had got sluggish.  [Speedtest](http://www.speedtest.net/) was reporting single digit Mbps.  Regularly.  Damn.

I reckon I was the first in the street to get it so perhaps there's some contention now ... but surely not *that* much!?

But that wouldn't explain why my NAS exhibits such poor performance.  Piss poor in fact.  We're talking Kb/s range rather than Mb/s I'd expected.  Some experimentation was required.  This is going to take a while.

At this point I'll outline my setup as it was:

* RJ45 jack to BT fibre modem wotsit
* Ethernet to VDSL wireless router thing - the freebie from [PlusNet](http://plus.net) - if you sign up (and you should) I'd be grateful if you told them _baldrick_ sent you so I get a few pence commission at no cost to you.
* Ethernet from wireless router to Netgear 8-port unmanaged switch (all the same model, some v2 others v3)
* 3 * ethernet from 8-port to wall jacks for three other rooms
* Room 1 has another 8-port unmanaged switch to which I've connected my PS3, XBox One, home cinema kit, Sonos bridge, etc...
* Room 2 has another 8-port unmanaged switch for my main PC and printer
* Room 3 has another 8-port unmanaged switch for the XBox 360 and BluRay player
* From room 3 there's another wall jack going off to ...
* ... room 4 which contains a wireless router (more coverage) and another wall jack to ...
* ... the final room which contains another wirelss router (yup, more coverage) ... and my NAS

# Testing times

I knocked up:

* A little spreadsheet for recording performance
* A folder with some big files (audio + photos) - just over a gig-and-a-half's worth
  * I didn't bother with zillions of small files as that's not representative of the sort of traffic I deal with (or care about optimizing anyway)

Then I started the tedious process of moving the NAS so I can find which section of the network is poorly.

## NAS direct to PC

I connected the NAS direct to the same 8-port switch as my PC (i.e. room 2).
I should see maximum performance here because there's minimum distance and, more importantly, fewest extra boxes, between the machines.
So we come to the tests:

* Copy my test folder from PC to NAS using NFS
* ... from PC to NAS using iSCSI
* ... from NAS to PC using NFS
* ... from NAS to PC using iSCSI

Yeah, I know this isn't as scientific as it could be.  But I reckon it's good enough.
You may as well know as this point I've done zero optimization on the NAS (a 4-bay QNAP) / PC (my own build) to improve network performance - it's all bog standard.

The results suprised me somewhat.  But first ... what's going on here?  The PC's only connecting at 100Mbps.  Hmm.  Replace the cable.
That's better, 1Gbps.  Cables really are important and I've got a right old mish-mash of Cat5/5e/6 patch cables (all Cat6 in the walls though).

Ok, now everything's connected at gigabit speed (according to Windows / my NAS / the lights on the switch).
Run the copy.  Still goes like an [asthmatic ant with some heavy shopping](http://www.imdb.com/title/tt0526712/quotes?item=qt0186062).

Swap one switch for another.  Ok, now copying over NFS hit 10-20 Mb/sec.  iSCSI was way faster.  But only for PC to NAS.  NAS to PC was miles slower.  #wtf

I'll ignore the out-there NAS to PC iSCSI result, the others were an order of magnitude better than previously.  So I've got one dodgy switch...

At this point I'll clarify that in this article Mbps means megabits per second.  Mb/sec is megabytes per second.  10Mbps = 10,000,000 bits per second.
10Mb/sec is 10 * 1024 * 1024 bytes (1 byte = 8 bits) per second.  At least it is in this article.  I think.

## NAS in room 1

There are now two 8-port switches between it and the PC.

Speed is back to the heavily laden ant.  Hmm.

Reconfigure so the NAS is direct to room 1's wall jack.  That's more like it.

Grumpiness has set in (I don't enjoy testing).  I order an [Asus modem](http://www.amazon.co.uk/gp/product/B00NQY3WO8?psc=1&redirect=true&ref_=oh_aui_search_detailpage) to replace the PlusNet freebie and a [5-port Netgear ProSafe switch](http://www.amazon.co.uk/gp/product/B002YPJ8KM?psc=1&redirect=true&ref_=oh_aui_search_detailpage).
I installed the Prosafe next to my PC and performance to the NAS is back up to Mb/s speed.

Installing the Asus gives another lift.
Now the NAS is performing as if it were connected direct to the PC.  22Mb/sec.
Not only is the Asus' UI waaaaay faster than the freebie one it's also consistenly giving 72Mbps internet speed.  Goody.
And we're a box down in room 1: the Asus has 4 gigabit ports in addition to the WAN port so it can serve all three wall jacks directly.  Splendid.

## NAS in room 3

At this point I'd reconfigured the network for boring logistical reasons so the NAS now had a wireless router and an 8-port switch in front of it.

And the tests showed performance akin to an insect who'd maxed out its credit card at Westfield.

I ordered another 5-port ProSafe (they're only twenty-three quid which I reckon's ok if they last a few years at least).
Now I remove the wireless router (always a temporary item) and the 8-port switch so the NAS is on the new switch that's also connected to room 3's wall jack.

And bang.  We're back up to decent speeds.  It's dropped a little (10-20%) from the best but we're still in the right ballpark.

## NAS in room 4

Frankly at this point I can't remember whether I tested here.  I reckon I probably did (if a job's worth doing, it's worth doing properly!) but can't recall the results.  There's still a wireless router in here (for coverage) but otherwise it's straight on to...

## NAS in the final room

Another wireless router (yet more coverage) in here.  Plus the NAS.  And we're consistently getting 15Mb/sec.  Job done.  Well, enough for me anyway.