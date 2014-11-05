class people::cloudnautique {

  include bash
  include chrome
  include docker
  include elasticsearch
  include mysql
  include python
  include redis
  include vim
  include virtualbox

  include python::virtualenvwrapper
  include bash::completion
  include iterm2::stable
  include iterm2::colors::solarized_light
  include iterm2::colors::solarized_dark


  class {'packer':
    version => '0.7.1'
  }

  class {'vagrant':
    version    => '1.6.5',
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
        'faith/vim-go',
    ]:
  }
}
