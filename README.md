PKGBUILDs
=========

My customized Arch Linux PKGBUILD files

### Note about submodules

Packages already hosted on AUR are included as submodules in this repository. Please run
```
git submodule update --init
```
inside the repo after cloning to correctly pull all submodules.

By default the read-only https urls are used for those submodules. To enable push access,
run `enable-push.sh`. Note you need first setup public key in your AUR account to be able
to push. You will also need to contact me to add you as a co-maintainer for that package.
Refer to [wiki](https://wiki.archlinux.org/index.php/Arch_User_Repository#Authentication)
for more information.
