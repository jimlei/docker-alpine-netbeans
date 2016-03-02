Alpine Linux docker image with Netbeans IDE (PHP/HTML).

```bash
$ docker run --rm --net=host -e DISPLAY -v $(pwd)/.netbeans:/projects -v $(pwd):/data -u 1000 jimlei/alpine-netbeans &
```

#### Alias
Add to `~/.bashrc`
```bash
alias netbeans='docker run --rm --net=host -e DISPLAY -v $(pwd)/.netbeans:/projects -v $(pwd):/data -u 1000 jimlei/alpine-netbeans &'
```

Load the changes
```bash
$ source ~/.bashrc
```

Usage
```bash
$ netbeans
```


