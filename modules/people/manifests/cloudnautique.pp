class people::cloudnautique {

  include bash
  include chrome
  include docker
  include elasticsearch
  include mysql
  include python
  include redis
  include virtualbox
  include macvim

  include python::virtualenvwrapper
  include bash::completion
  include iterm2::stable
  include iterm2::colors::solarized_light
  include iterm2::colors::solarized_dark


  class {'packer':
    version => '0.7.5'
  }

  class {'terraform':
    version => '0.3.5'
  }

  class {'vagrant':
    version    => '1.7.1',
    completion => true,
  }


  git::config::system { 'push.default':
    value => 'current'
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
