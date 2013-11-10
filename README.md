# my Emacs-live customization pack

This is a collection of common settings for Emacs-live package

### What this pack contains

  - key binding to move between split-panes wit `[Cmd] + [Alt] + [Arrows]` a far more natural way
  - key binding to resize the font with `[Cmd] + [Mouse-Wheel-Scroll-UP|DOWN]`

### Installation

There is a good step-by-step instruction for installing and customizing Emacs-live at:
[http://paradigmx.net/blog/2013/04/01/clojure-toolchain-reloaded/](http://paradigmx.net/blog/2013/04/01/clojure-toolchain-reloaded/)

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

Finally tell emacs to use your additional packs as well with by creating a file called `~/.emacs-live.el` 
with the following content:
```
(live-use-packs '(live/foundation-pack     ; Use live-use-packs to control which built-in packs should be loaded
                  ; live/colour-pack       ; This built-in pack MUST be disabled if you want to use 3rd party color theme pack
                  live/clojure-pack
                  live/lang-pack
                  live/power-pack
                  live/git-pack
                  live/org-pack
                  live/bindings-pack))
                  
(live-add-packs '(~/.live-packs/bruno-pack
                  ~/.live-packs/solarized-pack))
```

Now you should be ready to run emacs and hack something.

Have fun!
