#!/usr/bin/env bash


npm run build
rsync -avz dist/ jgibson@jgibby.xyz:~/projects/blog/home
ssh jgibson@jgibby.xyz << FIX
 cd ~/projects/blog/home
 sed -i "s/\/assets/assets/" index.html
FIX
