# my Emacs-live customization pack

This is a collection of common settings for Emacs-live package

### What this pack contains

  - key binding to move between split-panes wit `[Cmd] + [Alt] + [Arrows]` a far more natural way
  - key binding to resize the font with `[Cmd] + [Mouse-Wheel-Scroll-UP|DOWN]`

### Installation

There is a good step-by-step instruction for installing and customizing Emacs-live at:
(http://paradigmx.net/blog/2013/04/01/clojure-toolchain-reloaded/)[http://paradigmx.net/blog/2013/04/01/clojure-toolchain-reloaded/]

Afert installing Emacs-live please do:

```
mkdir ~/.live-packs

# installing solarized theme
cd ~/.live-packs
git clone git://github.com/siancu/solarized-pack.git
cd solarized-pack
git submodule init
git submodule update

# installing my-emacs customizations
cd ~/.live-packs
git clone git@github.com:BrunoBonacci/my-emacs.git

```

Have fun!
