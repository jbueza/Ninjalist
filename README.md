Ninjalist
================================
by Jaime Bueza

A World of Warcraft addon that is dedicated to providing players with an early warning system for ninjas (people who master loot the raid and unfairly steal the loot from you)

USAGE
---------------------------------------
<code>/ninjalist add nameOfPlayer</code>

Adds the name of the player with an associated date for tracking purposes.

<code>/ninjalist scan</code>

Scans the current raid group for any known Ninjas.

DEBUGGING AND DEPLOYING TRICKS
---------------------------------------
For really fast debugging, you can open up your WoW game, create the following macro: <code>/reload ui</code>

cd into your Ninjalist working copy (not your World of Warcraft Interface Addons directory, this is your deploy directory!)

run ant (build.xml) with the following: <code>ant deploy</code> or simply <code>ant</code>. This will copy your working directory into your Mac OS X World of Warcraft Interface Addons directory.

Once this is complete, you can alt-tab back into your World of Warcraft game client and then type <code>/reload ui</code> or if you made macro for it, hit that.


TODO
---------------------------------------
* Create Windows batch (.bat) file for Windows developers that want to contribute to this project
* Develop a workflow for users to upload their ninjalists to a web service 
  * name of player (ninja)
  * date of the incident
  * server the player is on
  * the location (vault of archavon, ice crown citadel)
    
* Develop a UI using Frame.xml that allows users to add ninjas easily, as well as, search easily