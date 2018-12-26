# Infrastructure

For better group screen sharing, I have used a shared virtual machine that we
all vnc into.

Run `ssh -A -L 5901:localhost:5901 3.17.121.29` and then use a VNC client of
your choice (I recommend tigervnc, as that's the same version the server is
running) to connect to `vnc://localhost:5901` and you will be able to join a
session in progress.

To start your own vnc session:

- Make sure the server is on (I need to figure out how to give you the ability
  to turn on the instance))
- ssh into the machine
- Run `vncserver :<ASINGLEDIGIT> -alwaysshared -disconnectclients=0`, where
  ASINGLEDIGIT is either 2 for betsy or 3 for jennifer
- run `ssh -A -L 590X:localhost:590X 3.17.121.29` to forward the vnc port to
  your machine. (Where X is the number you used for ASINGLEDIGIT earlier)
- Connect to `vnc://localhost:590X` with your VNC client of choice!

This is a bit more painful than using Zoom, but it will work on for anyone. Also
we can spin up the instances processing power to GODMODE if we need to.
