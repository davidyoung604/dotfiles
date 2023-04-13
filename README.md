### Source(s)

The instructions have been cobbled together from a couple of sources (though largely [this](https://www.atlassian.com/git/tutorials/dotfiles), and lightly tweaked to suit my naming preferences.

### Setup Instructions

  1. Common settings, whether initiating a new repo or cloning an existing one.
      ```shell
      # So the command is usable for all subsequent sessions
      echo "alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
      # So we can work with the command immediately without sourcing
      alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
      # Avoid any potential weird recursion
      echo ".dotfiles" >> $HOME/.gitignore
      ```
  2. One of:
      - Initating another dotfiles repo. It's doubtful I'll need it now that I've pushed this, but who knows.
          ```shell
          git init --bare $HOME/.dotfiles
          ```
      - Cloning an existing repo
          ```shell
          git clone --bare <git-repo-url> $HOME/.dotfiles
          ```
  3. Finalizing
      ```shell
      # Otherwise `config status` is going to show everything under $HOME
      config config --local status.showUntrackedFiles no
      # Pretend these are up-to-date, regardless of actual status so they can be removed and don't clutter up $HOME
      config update-index --skip-worktree README.md
      rm README.md
      # In the event a skipped file needs to be updated
      config update-index --no-skip-worktree README.md
      config checkout -- README.md
      ```

### Usage

Because we've set `alias config='/usr/bin/git ...'`, the command to manage this repo is just an aliased git, so the usage is `config <anything git supports>`.
