package Achilles::Model::Menu;
our $VERSION = '0.01_02';


use base qw/Catalyst::Model::MenuGrinder/;

__PACKAGE__->config(
  menu_config => {
    plugins => [
      'XMLLoader',
      'FileReloader',
      'DefaultTarget',
      'Variables',
      'ActivePath',
      'NullOutput',
    ],
    filename => Achilles->path_to('root', 'menus', 'top-nav.xml'),
  },
);

1;

