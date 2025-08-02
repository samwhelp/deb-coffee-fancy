

# deb-coffee-fancy

> [deb-coffee-fancy](https://samwhelp.github.io/deb-coffee-fancy/)




## Link

* Pacstall / [pacstall-programs](https://github.com/pacstall/pacstall-programs#pacstall-programs)
* Pacstall / Wiki / Pacscript 101 / [Example of script placement](https://github.com/pacstall/pacstall/wiki/Pacscript-101#pacscript-name)
* [pacstall-packaging](https://github.com/samwhelp/pacstall-packaging)


| deb-coffee |
| ---------- |
| [deb-coffee](https://github.com/samwhelp/deb-coffee) |
| [deb-coffee-maccity](https://github.com/samwhelp/deb-coffee-maccity) |
| [deb-coffee-wincity](https://github.com/samwhelp/deb-coffee-wincity) |
| [deb-coffee-fancy](https://github.com/samwhelp/deb-coffee-fancy) |
| [deb-coffee-grub](https://github.com/samwhelp/deb-coffee-grub) |
| [deb-coffee-sddm](https://github.com/samwhelp/deb-coffee-sddm) |




## Manpage

* $ [man pacstall](https://github.com/samwhelp/deb-coffee/blob/main/helper/share/manpage/pacstall.md#manpage)




## Pacstall Pacscript Repository Structure


```
.
├── packagelist
└── packages
    └── demo
        └── demo.pacscript
```


## Update Db

run

``` sh
ls -1 packages > packagelist
```

or run

``` sh
make db-update
```




## View packagelist

run to view [packagelist](packagelist)

``` sh
less packagelist
```

or run

``` sh
view packagelist
```




## Add Repository / Remote

run

``` sh
pacstall -A https://raw.githubusercontent.com/samwhelp/deb-coffee-fancy/main
```

or run

``` sh
pacstall -A https://github.com/samwhelp/deb-coffee-fancy/tree/main
```


run

``` sh
cat /usr/share/pacstall/repo/pacstallrepo
```

show

```
https://raw.githubusercontent.com/pacstall/pacstall-programs/master
https://raw.githubusercontent.com/samwhelp/deb-coffee-fancy/main
https://raw.githubusercontent.com/samwhelp/deb-coffee/main
```




## Add Repository / Local

run

``` sh
git clone https://github.com/samwhelp/deb-coffee-fancy.git ~/Documents/deb-coffee-fancy
```


run

``` sh
pacstall -A "file://${HOME}/Documents/deb-coffee-fancy"
```

> See Also `man 8 pacstall`


## Howto

### Search

``` sh
pacstall -S greystone
```

``` sh
pacstall -S bean
```


### Build and Install

``` sh
pacstall -I bean-appearance-greystone-icon-theme
```


### Only Build

``` sh
pacstall -I -B bean-appearance-greystone-icon-theme
```


### Download pacscript

``` sh
pacstall -D bean-appearance-greystone-icon-theme
```
