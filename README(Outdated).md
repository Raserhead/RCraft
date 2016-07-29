# RCraft
---------------------------------------------Technical Stuff----------------------------------------------------

RaserCraft V0.6
Minecraft Version: Spigot 1.8 
Platform: Windows 7 or higher (No idea about Xp/Vista) Will do mac if requested.
Java: Latest, 64bit required for higher than 2GB RAM Allocation
Required Programs to run correctly: Notepad++

---------------------------------------------Legal Stuff--------------------------------------------------------

The plugins and server framework belong the their authors and Mojang respectfully, 
even though most configuration is done by me.
All other assets are mine, as well as the batch scripts.

You can share this setup with who you like and credit me for the assests and configuration,
however if you are using the "Enterprise" version,
all custom assets are copyright to the Hyperfrost® brand and myself and you are NOT allowed to share them.

--------------------------------------------Before we begin-----------------------------------------------------

If you're just running this for yourself, you wont need to worry about how good your computer is unless
you're doing some serious world editing or Voxel.

If you're planning on having a few friends on,
you'll need 8GB or more of RAM with an I5 processor or higher. (Or whatever AMD's equivilient is.)
That's just to make sure you don't overwork your system, servers can work on less.

---------------------------------------------Getting Started----------------------------------------------------

The Insta-Server folder contains all required setup assets and several "starting" plugins,
the first thing you want to do is make sure you have all the necessary files and scripts,
The main assets you need to make sure you have, are: Rasercraft.jar, init.bat and res.bat

MEMORY ALLOCATION:

After that, you want to check how much RAM your system has, most laptops have 4GB and most desktops have 8GB,
this can usually be checked by pressing start and typing "system" and opening the option just called "system".
It should have the field "Installed Memory (RAM)" and the amount next to it.
When you know how much you have, you can choose how much you want to assign to the server.
Here's a quick guide that follows my rule of thumb:

2GB total - Assign 1GB to the server.
4GB total - Assign 2GB to the server.
8GB total - Assign 4GB to the server.

Basically give it half of what you've got.

Anything over 8GB, still stick to 4GB, you wont need more unless you're planning on a lot of worldedit,
in which case I'd suggest a minimum 8GB assigned to the server IF YOU HAVE 16GB OF RAM OR MORE.
Otherwise, stick with 4.

Now, to actually give it this RAM, you have to edit the startup code, which I've made a bit easier.
RUN the "Rasercraft" jar (double click), Click "Open config screen" and then click "Memory allocation".
It will then open up a notepad++ file and you will see
this line:
"java -server -XX:+UseConcMarkSweepGC -XX:OnOutOfMemoryError="kill -9 %p" -Xmx2G -jar spigot.jar nogui -o true"

Now you're probably thinking, "What the hell is that?!". Don't freak out, there's only one bit of that which you
need to worry about, and that's this section here: "-Xmx2G"
This is what tells java how much RAM it should allocate, to "translate" it literally, it basically says:
"Allocate Maxmimum 2GB", if that helps. Now, to change the RAM allocation you just need to change that number
to whatever you want it to be, but it must stay in that format, e.g -Xmx1G, -Xmx4G or -Xmx8G.

Once you've changed the number, save the file and then close it, don't edit any other part.

FIRST RUN THROUGH:

Start the Rasercraft.jar then click the "Launch Server" button.
The server will then begin it's start up sequence and generate your world and anything else it needs.
Once it has launched and you see the "Done <1.4585s>!" message, you'll want to OP yourself, to do this just type
"OP (your minecraft username)", not including the (), and hit enter. That's all you need to do for now.

---------------------------------Plugins, their Configuration and other junk-----------------------------------

As I said before, you get some starting plugins to play with in the original files, if you want to add more
plugins, you must ensure they are compatible or issues will pop up. Sometimes plugins just don't work, even
if they should be compatible, don't worry about it.
To add a plugin, put it inside the "Plugins" folder.

CHOOSING PLUGINS:

The current server being used in this pack, is 1.8 Spigot.
From as far as my testing can tell me, this version should be compatible with anything as far back
as 1.7.9 R0.3,
"But hold on Raser, what does that even mean?"
The bukkitdev site has version information for their plugin on the bottom right hand side of the plugin page,
it has the header "Facts" and the subheader "Recent files", this is where you will see a line like this:
"R: Vault 1.5.6 for 1.8.1 Aug 18, 2015"
It has the plugin version, minecraft version and date. This is what you must check, so if you can't
connect the dots, here's a quick list of compatible versions of plugins:


1.8.3 and higher
1.8.1
1.8
1.7.10
1.7.9 R0.3
(Not 100%) 1.7.9 R0.2

Nothing below these versions will work for 1.8 unless you are really lucky or the author specifically
says, "THIS WORKS FOR 1.8".

Unfortunatly the spigot dev site doesn't have this IMMENSELY useful feature and you'll have to just
look through the information or take a shot in the dark.

PlUGIN CONFIGURATION:

To edit configuration files, click "Open Config Screen" on the main Rasercraft menu, then just click
which plugin configuration you would like to edit.
I will not be offering support for any other plugins unless they become part of the pack themselves,
I may add something that will allow you to add your own into it.
Until then, you'll have to go into the server files themselves to edit them.

A rule of thumb when it comes to plugin configuration, if you don't know what you're doing or you 
don't know what something does, don't touch it. You WILL break it.

--------------------------------------------Network Settings---------------------------------------------------

Letting people into the actual server requires you to open your TCP and UDP 25565 ports,
Google how to do that with your router

Simple instructions
1. Find your internal address, run cmd, type ipconfig hit enter and find your Ipv4 address, that's your internal address.
2. Go to router settings
3. Find port forwarding or virtual servers
4. Direct TCP and UDP connects on the 25565 port to your internal address
5. Connect to your server through mc using your external IP address, if you don't know it just google "whatsmyip".

If you just want it for yourself, just put the internal address in the "server Ip" field when adding it to your list.

-------------------------------------------------------FAQ-----------------------------------------------------

I'll add these when I get some.

1. When I try to edit one of the configs nothing happens! What do I do?

Solution: You most likely don't have Notepad++, get it from here: https://notepad-plus-plus.org/download/v6.8.3.html
          Download the installer, run it, install to the default location, DO NOT CHANGE IT. Leave all options as default
          If you've done this correctly, it should work. No exceptions.
