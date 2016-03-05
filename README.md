Alpine Linux docker image with Netbeans IDE (PHP/HTML).

```bash
$ docker run -it --rm \
    -e DISPLAY \
    --net=host \
    -v $HOME/.Xauthority:/home/netbeans/.Xauthority \
    -v netbeans_data:/home/netbeans/.netbeans \
    -v netbeans_projects:/home/netbeans/NetBeansProjects \
    -v code:/data \
    jimlei/alpine-netbeans &
```

#### Alias
Add to `~/.bashrc`
```bash
alias netbeans='docker run --rm -e DISPLAY --net=host -v $HOME/.Xauthority:/home/netbeans/.Xauthority -v netbeans_data:/home/netbeans/.netbeans -v netbeans_projects:/home/netbeans/NetBeansProjects -v code:/data jimlei/alpine-netbeans &'
```

Load the changes
```bash
$ source ~/.bashrc
```

Usage
```bash
$ netbeans
```


