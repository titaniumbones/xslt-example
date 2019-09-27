# Toy XSLT Practice Repo

This is a simple repository that contains a simple XML file, the XSLT file to transform it, and a very short JavaScript ifle that acts on the resultant DOM when it's loaded into a browser.  It's intended for studnet projects that manipulate text systematically after a call to an API.

## Usage

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

whew.  Should work now. 
- 
## Romeo and Juliet

For Romeo and Juliet see [the rj directory](./rj/rom-act2.xml).

## Basics




