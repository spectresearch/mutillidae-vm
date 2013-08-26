name             'mutillidae'
maintainer       'Claudio Salazar'
maintainer_email 'csalazar@spect.cl'
license          'All rights reserved'
description      'Installs mutillidae'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'apt', '~> 2.1.1'
depends 'apache2', "~> 1.7.0"
depends 'mysql', "~> 3.0.0"
depends 'php', "~> 1.2.0"
depends 'git', "~> 2.5.2"