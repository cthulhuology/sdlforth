SDL2 Forth
===========

This repository contains bindings for the [SDL2](http://libsdl.org) library 
for [SwiftForth](http://forth.com).  With it you can create
games, interactive novels, multimedia apps, etc from within Forth.

Currently most of SDL2 is supported, but there are a few rough edges.

The tutorials can be run as:

	sf tutorial/01_hello_world.f

under Linux.  Under Windows, you can:

	cd c:\path\to\sdlforth
	include tutorial/01_hello_world.f

and get the same result.  I have not yet tested this on Mac OS X, but
it should run same as Linux with the appropriate .so file.

Currently most OSes ship with 64 bit builds of SDL2, but SwiftForth is
still just a 32 bit application.  This can result in a failure to launch.
This repository contains 32 bit .so and .dll files locally so that it
can run on Linux and Windows resprectively.  For your application, you
will need to make sure that they're in a path that SwiftForth can find.

Enjoy,

Dave Goehrig <dave@dloh>
