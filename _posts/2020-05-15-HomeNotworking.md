---
layout: post
title: "Home Notworking"
description: ""
category: Tech
tags: []
header-img: "images/unifi/usg.jpg"
---
{% include JB/setup %}

<img src='/images/unifi/tldr.png' width='600px'>

It's been a couple of weeks and I'm of the view Unifi kit is expensive, awesome and frustrating.

WiFi coverage, for us anyway, is excellent and roaming between AP's is miles better than previous kit (YouTube buffers enough to cover the switch whereas previously I'd have up to a minutes' worth of paused video waiting for the reconnection) although WLANs do appear to briefly drop out periodically - something to investigate.

I haven't done much in the way of speed test across my local network but I'm getting the same ~70Mbps internet speed that I got before.

The UI is fab and I've only really just scratched the surface.

I can hear you asking ... if that's the tl;dr section, how long's the rest of this post?  Get a cuppa a sit comfortably...

<img src='/images/unifi/upgrade.png' width='450px'>

A while ago, just after Coronalockdown started, a colleague told me he was getting his home broadband upgraded so he was thinking about also upgrading his networking kit.  Naturally curious, especially about tech, I asked ... to what?

Ubiquiti's Unifi kit.

He pointed me at their [demo site](https://demo.ui.com/manage/site/default/dashboard) which I then spent a few minutes (ok, _quite a few minutes_) drifting around.  It looks impressive and certainly right up Geek St.

I vaguely remembered another colleague, from around a decade earlier, telling (ok, boasting) of some enterprise class kit he was running and thought the name sounded familiar.  I was doubly intrigued.

<img src='/images/unifi/vr.png' width='450px' title="A snapshot of the VR view you get with their high-end kit so you can see what's at the other end of that anonymous looking cable">
<img src='/images/unifi/expensive.jpg' width='300px'>

It's not for the faint hearted though.  First off you need to figure out which pieces of kit you need.  What's the Cloud Key about?  Do I need a Security Gateway?  And what's this Dream Machine?  And the Dream Machine _Pro_?  Oh, they're not available in the UK yet.  Meh, forget it.  Plus, _damn_, it's expensive.

<img src='/images/unifi/SlowInternet.jpg' width='450px'>
<img src='/images/unifi/turn-it-off-and-on-again.jpg' width='220px'>

A couple of weeks later what I'd been fearing for some time became more real: our existing router was going wrong.

It had needed restarting a couple of times over the last few months - a sure sign it's on its way out.  At least that was our experience of the previous router too: wifi drop-outs and some complete outages that meant _have you turned it off and on again_ took on real significance.

<img src='/images/unifi/slow-internet.png' width='450px'>

Given we'd been in lockdown for a few weeks with no end in sight, and with the entire family \[work\|learn\]ing from home, it seemed prudent to order some replacement kit - the internet is not something we want to live without at the best of times.  And this isn't the best of times.

Not being one to do things by halves I went all-in with Unifi.

A USG, UCK, some USW's and UAP's were ordered.  Eyes averted whilst paying.  More on the acronyms later.

24 hours afterwards a big box was left outside our house.  Once the courier had retreated to a safe distance the box was brought inside and left, tantalisingly, until the evening (hey, I gotta work).

<img src='/images/unifi/internet.jpg' width='450px'>

The evening came around so I got down to some serious unboxing.  Turns out there aren't a lot of opportunities for my family to live without the internet.

8:30am = working/learning from home<br/>
6pm = homework and/or other drifting around the internet (Facebook / Instagram I'm looking at you)<br/>
9pm = YouTube / Netflix

Tuesday night saw some progress but by midnight I had to admit defeat and switch back to the old kit.<br/>
Wednesday night saw a little more progress but another post-midnight switch back to the old kit.<br/>

Damn.  It's going to take some time.  Thursday and Friday saw the wine fridge in action so the weekend was set aside.  At least it got me out of doing the chores :wink:

## Dream Machine

<img src='/images/unifi/udm.png' width='250px'>

I believe this is a USG, UCK, UAP and 4-port USW in one device.

I specifically didn't want this because my previous routers have been all-in-one affairs and I reckon the cupboard it's kept in contributes to its shorter lifespan - network kit doesn't like warmth despite giving off a non-trivial amount of it.  With separate devices I can keep the USG in the cupboard (where the modem is fixed next to the master phone socket) and everything else ... elsewhere.

In most ways this is a pity because it would've saved a non-trivial chunk of change.  But separate boxes will hopefully mean greater longevity.  And I'm prepared to pay to avoid long-term pain-in-the-arse-ness.

## USG
First things first, I _did_ need a USG.  That's the security gateway and it connects, for me via a modem supplied by BT, to the internet.  It's where your internet username & password go.  I bought the smallest & cheapest one.  Although it has two LAN ports, they're for separate LANs.  e.g. 192.168.1.0/24 and 10.0.0.0/24 ... which is how I had it configured at one point.  More on _that_ later.

<img src='/images/unifi/usg-simple.png' width='450px'>

## UCK
You don't _need_ a UCK.  This is the Cloud Key and quite simply is the software that makes managing all these devices much simpler - a single UI for (pretty much) everything.

This is one of the big appeals for me.  Previous kit was out of date (firmware-wise) when it arrived and never changed because you'd have to log in to each piece of kit individually (with its own password) to update it.  So I didn't.  The single front end for all the firmware / software updates makes that a lot simpler.

The Unifi software _can_ simply be run on a Raspberry Pi but I wanted the simplicity of the UCK and ended up buying the Gen2+ variant because it wasn't much more cash than the non-plus version and opened up the possibility of CCTV...

<img src='/images/unifi/uck.png' width='450px'>

Delightfully this device has a little screen so you can see its IP address.  Very useful when setting up.  Pretty pointless long-term.  It's also got a little slot for an SD-card and the UCK can be configured to automatically back up its configuration ... which I hope I'll never need, but if I do I'll be very glad.

## USW
I've got a relatively non-standard setup and quite a few devices that are hard-wired (Sky boxes, Raspberry Pis, a smattering of PCs, the list goes go) so I bought more than one 8-port switch.  I bought the POE variant as it was only a few quid more than non-POE and I thought it'd come in useful for the UAP's.

<img src='/images/unifi/switch8.png' width='450px'>
<img src='/images/unifi/switch5.png' width='450px'>

I've also ordered some _Lite_ 5-port switches.  They're new on the scene though so haven't actually been delivered yet.  No ETA either which is irritating.  Trying to remember something about patience being a virtue...

## UAP
These are wireless access points.  I went for AC Pro variants (the SHD / HD / Nano variants are stupidly expensive and I think only really needed in a commercial setting).  I'm now wondering if I could've got away with the AC Lite version; it would've been a useful saving so I'd probably do that if ordering again.

<img src='/images/unifi/UAPs.png' width='400px'>

They've got two ethernet ports and a USB port.  That's not as useful as it sounds.  The USB port appears to be _for future use_ ... I've never seen such a port ever actually used so I'm not holding my breath for this one.

I was hoping the ethernet ports would allow me to insert an access point into a network - a bit like having a two-port switch acting as a wireless access point.  But that's not what they're for.  No, the second port is only used if you're bridging a network wirelessly.  For example an AP in the shed bridging from an AP in the house allowing network access at the end of the garden with no wires in between.  I can see this being useful for some but my shed is wired so no need for a wireless bridge.  Darn - my network remains slightly more complicated than I was hoping.

<img src='/images/unifi/injector.jpg' width='150px'>

The UAP's are powered using POE only.  So if your switch doesn't provide power you have to use the injector that comes with the device.  This is where I'm glad I paid attention to the small print - injectors are only supplied if you buy the single pack variants of the device.  Three pack => no injectors.

I also opted to pay an extra 50p (each) for wall mounts for the injectors.  This turned out to be a total waste of time as the injectors come _with_ wall mounts.  What's more the charge-me-more-why-don't-you wall mounts mismatch colour-wise (they're black, not white) AND their shape doesn't match up to the injectors.  I assume they're for a previous model.  Useless.

Whilst I'm moaning about useless, one of the more-extra-cost power cables didn't work.  Bizarrely no connectivity between the live pin and the fuse.  The supplier sent a replacement of course but #unusual.

<img src='/images/unifi/setup.png' width='450px'>

I took on the job of setting up a piece at a time.  USG, UCK, 8-port hub, UAP to start with.  That sounds a lot but it's the minimum to sensibly get wireless internet going.  Giving the UCK a static IP address helped a lot.  Ditto USG.  Disconnecting the old (DHCP-enabled) router ended up being important - having two DHCP servers on the same network is never a great idea.

It was easy enough to wire up the devices - I mounted the UAP's in the same locations as previous WAP's with minimal effort given over to seeing whether these are optimal locations.  They're probably not _optimal_ but they are _good enough_ as we now get strong wifi in every room of the house vs. previously weak wifi in the kids' rooms.

In theory _adopting_ a device would be easy.  But _so many times_ it failed for reasons that are still beyond me.  Many many factory resets of both USW's and UAP's were required.  Each device is basically a little computer running what I guess is a Unifi flavour of Linux - it's neat to be able to ssh on to any network device and their logs did help investigate problems but it's not neat that I _had_ to do it to get stuff working.  This was more painful than I'd expected it to be.

Firmware / software updates are best done manually (it's at least in a single UI so easy to kick off and easy to see when new versions are available) and ordered so the most remote devices are updated first.

Then it was a case of going around all the devices to move them on to the new wifi networks.  There's now a proper guest network, the kids are segregated (so I can put their internet access on a schedule), adults have a network and our increasing army of internet-connected devices has their own so I can firewall them off (the subject of yet-to-be-written post).

<img src='/images/unifi/kindle.jpg' width='150px'>
<img src='/images/unifi/alexa.jpg' width='150px'>
<img src='/images/unifi/smartplug.jpg' width='150px'>
<img src='/images/unifi/scales.jpg' width='150px'>
<img src='/images/unifi/nest.jpg' width='150px'>
<img src='/images/unifi/harmony.png' width='150px'>
<img src='/images/unifi/sonos.jpg' width='150px'>

So Kindles, Alexae, smart plugs, weighing scales, Nest smoke detectors, Harmony hub, Sonos all move to an internet-of-things network whilst iPads & PCs are on one of kids / adults network.

<img src='/images/unifi/skyq.jpg' width='300px'>
<img src='/images/unifi/skyq-mini.jpg' width='300px'>

Sky is wired so you'd think wouldn't cause a problem.

Unfortunately the main SkyQ box is off one of the USG ports (192.168.1.0/24) whilst the Sky Mini box in the lounge is off the other port (10.0.0.0/24).  The USG ports can only be configured for separate LANs, you can't have say one on 192.168.1.0/25 and the other on 192.168.1.128/25...

It also seems the folks at Sky aren't great at networking.  No end of forum reading & configuration twiddling later, and I might admin a little swearage, I gave up and resorted to a little rewiring, ditching the 10.0.0.0/24 network, putting both Sky boxes on the same subnet and ... it works.

We appear to be in business.  The old wireless network has been deprecated and everything appears to work.  Cool.

## Except

<img src='/images/unifi/pi-hole.jpg' width='450px'>

The old Asus machines had some sort of parental control stuff so you could block _adult_ sites.

Unifi doesn't have that.

I guess it's not surprising given it's not entirely aimed at the home gamer - if you want that sort of functionality I think they expect you to run a proxy or similar.  I ended up using [pi-hole](https://pi-hole.net/) - it's a DNS server, not a proxy, and isn't perfect, but works well enough to declare job done on that front.

As an added benefit many ads get blocked.

<img src='/images/unifi/schedule.jpg' width='450px'>

You may recall I wanted to schedule on/off times for the kids' wifi...

To start with the schedule I set up (in the UCK UI) worked fine.  I think.  Then my youngest was discovered online after the watershed.

Much forum searching followed.  No-one's entirely sure but the _beta_ version of _settings_ not only reverses the schedule (i.e. you specyify when you want it off rather than on) but also screws it up entirely and WLANs never go offline.

A little searching and I found a [gist](https://gist.github.com/jcconnell/0ee6c9d5b25c572863e8ffa0a144e54b) that solved my problem.  I tidied up the script, deployed to the pi running pi-hole and whacked in a crontab.  Job done.  Annoying though, especially as it appears to make the other WLANs _flicker_ off/on...

### DHCP pain

What's also annoying is the lack of support for static IP addresses.  I don't mean the ones that are handed out by the DHCP server but are always the same (because of a flag).  I mean the ones set statically in `/etc/dhcpcd.conf` on a pi.  

Firstly, switching from DHCP to static means the USG's routing table (in `/etc/hosts`) doesn't get updated so DNS fails because it keeps pointing to the old address.

Secondly, the static address isn't held in _any_ routing table by default so DNS fails until you add a `config.gateway.json` file with appropriate `static-host-mapping` entries to `/srv/unifi/data/sites/default` on your UCK and force a reprovision of your USG.  Which is a bit :poop:

## The Extras

I thought I'd give one of their cameras a go.  Being the cheapest of their range it was simply not stupidly expensive.  It was also, thankfully, an absolute doddle to set up.  Unfortunately though if I want the IR to work at night I need to put it outside ... which is plainly non-trivial given that means I need to get an ethernet wire outside.

<img src='/images/unifi/camera.png' width='100px'>

Now of course I'm wondering about VOIP phones.  Key requirements are wireless and the ability to sync with Google contacts - our current phones were great in their day but many of their buttons require a certain _technique_ (ok a damn hard press) to register and taking them apart to give their circuit boards a good clean doesn't help (yes, I've tried).  Suggestions please...

# The Clear Out

As a result of all the above I've got quite a bit of old networking kit to dispose of (some of which has simply been sitting in my shed as it was replaced long ago) so if anyone would like any of:

* Netgear ProSafe GS105E 5 port managed hubs
* Netgear ProSafe GS108E 8 port managed hubs
* Netgear GS608 8 port unmanaged hubs
* Netgear WNDR3700
* Netgear DGN2000 ... at least I think I've still got it somewhere
* TrendNet AC1750
* Asus RT-AC87U
* Asus RT-AC3200
* Asus RP-AC52 range extender

... let me know how much you'd like to donate to charity and we'll arrange something at least partly based on how well it still works (the Netgear managed hubs work perfectly & are great, the Asus RT kit is the stuff that started going wrong but is probably still good enough for a non-hot area).  Alternatively, if anyone knows of a charity that would like them, well, please let me know.  If you don't know what they are, you probably don't need them.
