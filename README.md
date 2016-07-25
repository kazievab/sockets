# Websocket example using Mojolicious

A little project using Mojolicious websockets.
Made two pages. On one square of any color, on the other "color" button. By clicking on the button to change the color of a square on the arbitrary in the next page.
Functional color change is implemented through a web square sockets.

# Install

	git clone git://github.com/kazievab/sockets.git sockets
	cd Sockets


Install the Carton package manager. Carton will install all dependencies
to the local/ sub-directory:

```sh
curl -L cpanmin.us | perl - Carton
```
or
```sh
cpanm Carton
```
and
```sh
carton install
```

# Run
```sh
carton exec morbo script/sockets
```
