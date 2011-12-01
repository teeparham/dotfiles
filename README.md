## Install

Checkout this repo into `~/.dotfiles`. Then install the dotfiles:

    rake install

This rake task will not replace existing files, but it will replace existing symlinks.

The dotfiles will be symlinked, e.g. `~/.bash_profile` symlinked to `~/.dotfiles/bash_profile`.

### <.replace>

If e.g. `~/.dotfiles/gitconfig` contains `<.replace github-token>` then

 * that bit will be replaced with the contents of `~/.github-token`
 * the resulting file will be written to `~/.dotfiles/gitconfig` directly, not symlinked
 
So if you want to make changes to that file, make them in `~/dotfiles/gitconfig` and then run `rake install` again.

Changes to symlinked files without `<.replace>` bits do not require a `rake install` on every change as they're symlinked.

## Manual Install

Manually link files here to user home:

    $ cd ~/.dotfiles
    $ ln -ns irbrc ~/.irbrc

## Credit

Much of this was inspired or straight-up copied from https://github.com/henrik/dotfiles
