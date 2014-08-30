# my Emacs-live customization pack

This is a collection of common settings for Emacs-live package

### What this pack contains

  - Solarized theme with some visibility improved (from https://github.com/siancu/solarized-pack.git)
  - key binding to move between split-panes wit `[Cmd] + [Alt] + [Arrows]` a far more natural way
  - key binding to resize the font with `[Cmd] + [Mouse-Wheel-Scroll-UP|DOWN]`
  - Paredit copy next sexp `[Ctrl] + [Shift] + c`, Duplicate next sexp `[C-S-d]` and kill next sexp `[C-S-k]` 
  - JSON format with `[C-M-\]`
  - Modified Arrows Up an Down in consoles and REPL to load last command.
  - Automatic reload of changed buffers from disk
  - On start up opens .TODO.dot which you can use to organize your notes.
  

### Installation

First install your Emacs 24 native package from one of the following options

  * OS X GUI: http://emacsformacosx.com/
  * OS X Console: via homebrew - brew install emacs
  * Windows: http://alpha.gnu.org/gnu/emacs/windows/
  * Linux: consult your package manager or compile from source

Then backup your `~/.emacs.d` folder with:

    `mv ~/.emacs.d ~/.emacs.d.backup`

Next checkout emacs-live

    ```
    git clone git://github.com/overtone/emacs-live.git ~/.emacs.d
    cd ~/.emacs.d
    # checkout  the latest release tag currently 1.0-BETA-24
    git checkout tags/release/1.0-BETA-24
    ```

Afert installing Emacs-live do:

    ```
    mkdir ~/.live-packs
    cd ~/.live-packs
    git clone https://github.com/BrunoBonacci/my-emacs.git
    ```

Finally tell emacs to use your additional packs as well with by creating a file called `~/.emacs-live.el`
with the following content:
     
    ```
    (live-use-packs '(live/foundation-pack      ; Use live-use-packs to control which built-in packs should be loaded
                      ;; live/colour-pack       ; This built-in pack MUST be disabled if you want to use 3rd party color theme pack
                      live/clojure-pack
                      live/lang-pack
                      live/power-pack
                      live/git-pack
                      live/org-pack
                      live/bindings-pack))

    (live-add-packs '(~/.live-packs/my-emacs))
    ```

Now you should be ready to run emacs and hack on something.

Have fun!
