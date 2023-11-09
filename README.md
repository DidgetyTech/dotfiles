![Mac OS compatibility](https://img.shields.io/badge/mac%20os-000000?style=for-the-badge&logo=apple&logoColor=white) ![Not maintained](https://img.shields.io/badge/Maintained%3F-no-red.svg) [![Codacy Security Scan)](https://github.com/DidgetyTech/dotfiles/actions/workflows/codacy.yml/badge.svg)](https://github.com/DidgetyTech/dotfiles/actions/workflows/codacy.yml) [![License](https://img.shields.io/github/license/DidgetyTech/dotfiles.svg)](https://github.com/DidgetyTech/dotfiles/blob/main/LICENSE.md)

# DidgetyTech does dotfiles

Your dotfiles are how you personalize your system. These are mine.

I really liked [Zach Holman][holman]'s topical organization. I had been using
oh-my-zsh, but it was hard to tweak for performance with all the plugins.

I also wanted a way that I could have a consistent experience on my personal
and work boxes, while allowing for customization on either end.

Much of this README comes from Holman's dotfiles.

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/install.sh**: Any file named `install.sh` is executed when you run `script/install`. To avoid being loaded automatically, its extension is `.sh`, not `.zsh`.
- **topic/\*.symlink**: Any file ending in `*.symlink` gets symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## install

Run this:

```sh
git clone https://github.com/holman/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane macOS
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## bugs

This is my personal configuration. It is not intended for direct consumption;
support will be minimal. Please fork and tweak for your configuration.


## thanks

I forked [Zach Holman][holman]'s [dotfiles](http://github.com/holman/dotfiles) which is the basis of this repo.

Various git aliases were inspired by:
* Lukáš Zapleta's [My Git aliases again](https://lukas.zapletalovi.com/2012/07/my-git-aliases-again.html)
* nicola paolucci - @durdn's [Must Have Git Aliases: Advanced Examples](https://www.durdn.com/blog/2012/11/22/must-have-git-aliases-advanced-examples/)
* William Duclot's [Up Your Git Game With Advanced Git Aliases](https://blog.theodo.com/2017/06/git-game-advanced-git-aliases/)

  [holman]: http://github.com/holman
