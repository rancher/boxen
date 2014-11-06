class people::cjellick {

  include bash
  include chrome
  include docker
  include mysql
  include python
  include macvim
  include virtualbox

  include bash::completion
  include iterm2::stable
  include iterm2::colors::solarized_light
  include iterm2::colors::solarized_dark


  class {'vagrant':
    version    => '1.6.5',
    completion => true,
  }


  git::config::system { 'push.default':
    value => 'current'
  }

  git::config::global { 'alias.hist':
    value => "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
  }

  git::config::global { 'core.pager':
    value => 'cat'
  }

  class { 'nodejs::global':
    version => 'v0.10.29'
  }

  vim::bundle {
    [
        'scrooloose/syntastic',
        'kien/ctrlp.vim',
        'godlygeek/tabular',
        'rodjek/vim-puppet',
        'fatih/vim-go',
    ]:
  }
}
