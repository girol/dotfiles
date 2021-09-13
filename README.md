# Girol Dotfiles

This project uses [GNU Stow](https://www.gnu.org/software/stow/) to distribute links and packages

## Usage

1. Clone the project to your home folder and `cd` into it:

```shell
git clone https://github.com/girol/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

2. Install the essentials script:

```shell
./install-essentials.sh
```

3. Stow specific packages:

```shell
stow home
stow omzsh
stow vim
```

4. Check the `Makefile` for install recipes


### [TODO]

- Move install scripts to Makefile
- Group base `stows` to `make` commands

### Motivation

Since I maintain 3 machines to work, I automated my installation to reflect the same environment in all of them.

The idea is to create highly customizable installable "modules".

It used to host only my `.vimrc`, but maintain other packages, other languages and remember what to install was a pain.


**Linux Distribution:** Ubuntu flavors (Depends on the weather)

**Current Distributin:** Ubuntu 20.04 in WSL2

Inspired on this project: https://github.com/Phantas0s/.dotfiles
