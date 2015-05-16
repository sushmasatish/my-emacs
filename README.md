# my Emacs-live customization pack

This is a collection of common settings for Emacs-live package

### What this pack contains

  - Solarized theme with some visibility improved (from https://github.com/siancu/solarized-pack.git)
  - key binding to move between split-panes wit `[Cmd] + [Alt] + [Arrows]` a far more natural way
  - key binding to resize the font with `[Cmd] + [Mouse-Wheel-Scroll-UP|DOWN]`
  - Paredit copy next sexp `[Ctrl] + [Shift] + c`, Duplicate next sexp `[C-S-d]` and kill next sexp `[C-S-k]` 
  - Added expand region bound to `[C-=]`
  - JSON format with `[C-M-\]`
  - Modified Arrows Up an Down in consoles and REPL to load last command.
  - Automatic reload of changed buffers from disk
  - On start up opens **.TODO.dot** which you can use to organize your notes.
  - It uses [NeoTree](http://www.emacswiki.org/emacs/NeoTree) and it binds it to `[C-x t]` to open a tree, and `[C-x M-t]` to open the project root using the git root of the current project.
  - **Mythical [restclient](https://github.com/pashky/restclient.el)** integration
  - Fantastic **[prodigy](https://github.com/rejeep/prodigy.el)**
  

### Installation

First install your Emacs 24 native package from one of the following options

  * OS X GUI: http://emacsformacosx.com/
  * OS X Console: via homebrew - brew install emacs
  * Windows: http://alpha.gnu.org/gnu/emacs/windows/
  * Linux: consult your package manager or compile from source

Then backup your `~/.emacs.d` folder with:

    mv ~/.emacs.d ~/.emacs.d.backup

Next checkout emacs-live

    git clone git://github.com/overtone/emacs-live.git ~/.emacs.d
    cd ~/.emacs.d
    # checkout  the latest release tag currently 1.0-BETA26
    git checkout tags/release/1.0-BETA26

Afert installing Emacs-live do:

    mkdir ~/.live-packs
    cd ~/.live-packs
    git clone https://github.com/BrunoBonacci/my-emacs.git

Finally tell emacs to use your additional packs as well with by creating a file called `~/.emacs-live.el`
with the following content:
     
    (live-use-packs '(stable/foundation-pack
                  ;; stable/colour-pack       ; This built-in pack MUST be disabled if you want to use 3rd party color theme pack
                  stable/lang-pack
                  stable/power-pack
                  stable/git-pack
                  stable/org-pack
                  stable/clojure-pack
                  stable/bindings-pack
                  ))

    (live-add-packs '(~/.live-packs/my-emacs))

Now you should be ready to run emacs and hack on something.

Have fun!

#### Prodigy configuration

Prodigy allows you to define a bunch of services which you commonly
start/stop during your development and create a configuration template
which then allows you to start/stop a service with one keystroke.
It is not required to open a `shell` and go to the appropriate directory
and then start the wanted service, just press `s` to start and `S` to stop,
if you want to check the output then press `$`.

In order to configure your *prodigy* services you need to create a file
called `.prodigy.el` in your $HOME directory and add the service
specifications there.

Example: `~/.prodigy.el`

```
(require 'prodigy)

(setq prodigy-services
      (prodigy-define-service
        :name "Service"
        :cwd "/workspace/my/project"
        :command "lein"
        :args '("run" "--" "-c" "./config/config.edn")
        :tags '(project1 test)
        :port 9000
        :stop-signal 'kill
        :kill-process-buffer-on-stop t))
```

see this page for more info: https://github.com/rejeep/prodigy.el
