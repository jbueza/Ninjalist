Ninjalist
================================
by Jaime Bueza

![Ninjalist Screenshot](http://2.bp.blogspot.com/_j2iJ0meptoY/S-e7A4DpI3I/AAAAAAAAAC8/uIaLJKiq8Lk/s1600/ninjalist-1.jpg)

A World of Warcraft addon that is dedicated to providing players with an early warning system for ninjas (people who master loot the raid and unfairly steal the loot from you)

USAGE
---------------------------------------

`/ninjalist`

This will open up the Ninjalist console that will allow you to add ninjas, scan for ninjas, and filter them.

DEBUGGING AND DEPLOYING TRICKS
---------------------------------------
For really fast debugging, you can open up your WoW game, create the following macro: <code>/reload ui</code>

cd into your Ninjalist working copy (not your World of Warcraft Interface Addons directory, this is your deploy directory!)

run ant (build.xml) with the following: <code>ant deploy</code> or simply <code>ant</code>. This will copy your working directory into your Mac OS X World of Warcraft Interface Addons directory.

Once this is complete, you can alt-tab back into your World of Warcraft game client and then type <code>/reload ui</code> or if you made macro for it, hit that.


TODO
---------------------------------------
* <strike>Create Windows batch (.bat) file for Windows developers that want to contribute to this project</strike> We are now using Ant as a deployment utility
* Develop a workflow for users to upload their ninjalists to a web service 
  * name of player (ninja)
  * date of the incident
  * server the player is on
  * the location (vault of archavon, ice crown citadel)
    
* <strike>Develop a UI using Frame.xml that allows users to add ninjas easily, as well as, search easily</strike>