# XSLT Practice Repo

This repository contains a small number of XML/XSL transform examples for students in [WDW235: Intro to Digital Humanities](https://fas.calendar.utoronto.ca/course/wdw235h1). They demonstrate in broad storokes the use of XSL to transform XML texts, especially TEI-encoded texts, into HTML. The intention is to provide a somewhat gentle introduction to the use of cpomputational thinking in such contexts. 

## Contents

- `./ruin/` contains a partially-encoded copy of [The Ruin](https://en.wikipedia.org/wiki/The_Ruin) in [./ruin/ruin.xml][./ruin/ruin.xml]. This file is not vaild TEI, and lacks reference to the TEI specification. The techniques demonstrated in the accompanying javascript and XSL files provide some context for the work students are expected to do in their XML assignment. 
- `./rj/` contains a lightly-modified version of the [Folger Shakespeare Libarry](https://www.folger.edu/)'s [CC-BY-NC-4.0](https://creativecommons.org/licenses/by-nc/3.0/)-licensed, [TEI-simple](https://tei-c.org/tag/tei-simple/)-encoded text of _Romeo and Juliet_ by William Shakespeare. I've made two modifications: 
  - I've removed Acts 1,3,4, and 5 to keep the file size manageable
  - I've removed most namespace references from the file in order to simplify the XSL transforms. 

## Seeing the transforms at work

There are 3 ways to see the transforms at work:
- [look at the rendered version of this repository on github Pages](https://titaniumbones.github.io/xslt-example/)
- [paste the XML and XSL code into an online xsl code playground](http://fiddle.frameless.io/)
- use a command-line XSL processing tool like xsltproc (see below)

### Installing and using xsltproc on MacOS

- Clone this repo were you want to keep it: 

```sh
cd ~/Documents/
git clone https://github.com/YOURUSERNAME/xslt-example.git
cd xslt-example
```

- work in a real text editor (VSCode, Atom, Sublime) and make changes to `rj/rom-act2.xml` and `rj/rom-trans.xsl`. 
- check your changes with xsltproc: 

``` sh
cd rj
xsltproc rom-trans.xsl rom-act2.xml > rom.html
open rom.html 
```

You'll need to inxtall xsltproc (cf. http://macappstore.org/libxslt/): first install Homebrew, then run `brew install libxslt`

Hopefully that works. 


### Linux Instructions

- Clone repo as a bove
- install `libxml` using your distro-specific tools
- use the temrinal as above

### Windows Instructions

Ummm....  I have no idea, hopefully someone can figure that out.  
