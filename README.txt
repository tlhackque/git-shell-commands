DESCRIPTION

The documentation for setting up a simple ssh-based
git server leaves creating a new repository to an
administrator who can ssh/su into the git account

This is inonvenient, especially when the git restricted
shell is used..

This repository provides a shell script that will
allow anyone with push access to create a new
repository.

It also provides a script that will list existing
repositories, including any non-default description.

And of course, help.

LIMITATIONS

In the spirit of "simple", there are no options, no
means to edit or remove a repository, as all those
would make the scripts longer - and less simple.

If you want everything, use one of the more complete
tools.  This is intended to solve the most common
issue at low cost.

INSTALLATION:

Put these scripts, owned by the git account, into
the git-shell-commands directory.

Although the #! lines specify bash, the scripts
have minimal dependencies.

USAGE

ssh git@example.com new repodir
ssh git@ecample.com new repodir "Description"

ssh git@example.com ls

ssh git@example.com help

LICENSE

See the LICENSE file.

BUGS

Report any bugs at https://github.com/tlhackque/git-shell-commands/issues

