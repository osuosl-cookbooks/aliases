name             'aliases'
issues_url       'https://github.com/osuosl-cookbooks/aliases/issues'
source_url       'https://github.com/osuosl-cookbooks/aliases'
maintainer       'Oregon State University'
maintainer_email 'chef@osuosl.org'
license          'Apache 2.0'
description      'Installs/Configures aliases'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.2'
depends          'magic_shell', '>= 1.0.0'
depends          'apt'
supports         'centos', '~> 6.0'
supports         'centos', '~> 7.0'
supports         'debian', '~> 8.0'
