# JPEG XL bash converter for GNU/Linux

A initial stage for self-learning. The code do what I need, none fancy or with custom options, just run the bash script as ./jpgxl.sh and nothing more. 

There are plans to make it more customizable; pass arbitrary flags/options, input/output custom folders etc. But at the moment and with the few free time I have and basic knowledge, it's fine. 

Any contribution is welcome.

**Tested in cjxl version:** 0.8.1

**Requisites:** 
JPEG XL binaries
https://github.com/libjxl/libjxl/releases

Example of use:
First do `chmod +x ./jpgxl.sh`
after open jpgxl.sh and **edit** to your preferences the options you need. 
and last:
```
./jpxl.sh
```
Note for computers with 12GB RAM or less: Change --effort to 7 (default). And be carefull with images with resolution: 4500x8000 or more, because can use more of 14GB of RAM (in my experience. Probably because --effort it's 8)
