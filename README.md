We all know that Pis can be anaemic at decoding FT8. With "htop" you can see that a Pi 4 has four cores, and that the jt9 process (the decoder) only loads one of those cores to 100%. What if you could run the system on three cores, and use the fourth just for the jt9 process?

Well.. you can!

Googled and found this, it didn't work, but linked to another tutorial that did: https://stackoverflow.com/questions/9072060/how-to-reserve-a-core-exclusively-for-a-process
Second tutorial here: http://web.archive.org/web/20120428093126/http://www.suse.com/documentation/slerte_11/slerte_tutorial/data/slerte_tutorial.html

This is my implementation of the tutorial.


Helpful commands:
chmod +x shield-core-for-decoder.sh unshield-core-for-decoder.sh
sudo apt install cpuset
