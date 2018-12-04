# nginx-index

A quick docker directory index.
Root is under volume /http.

it allow to run nginx with a non root user existing on your host

## Examples


First you need to build the image,
`docker build -t myImage .`

Then you need to run it
`docker run -v /etc/passwd:/etc/passwd -v /etc/group:/etc/group -v /etc/shadow:/etc/shadow -p 127.0.0.1:7001:8080 -i -v /path/to/folder/to/share:/http --name myContainer myImage`

The volumes `/etc/passwd`, `/etc/group` and `/etc/shadow` allow you to find in your container the same user as in your host with the same rights.
If you have something like `/etc/passwd-` in your host then you should add it in the run command as `-v /etc/passwd-:/etc/passwd-` same goes for `group` and `shadow`

the `-p 127.0.0.1:7001:8080` means only the host can access the service if you want to be able to access it from outside you should replace that part by `-p 7001:8080`
