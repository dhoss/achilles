package Achilles::Model::Menu;
our $VERSION = '0.01_02';


use base qw/Catalyst::Model::MenuGrinder/;

__PACKAGE__->config(
  menu_config => {
    plugins => {
        loader => 'XMLLoader',
        on_load => [
            'DefaultTarget',
        ],
        per_request => [
            'FileReloader',
            'Variables',
            'ActivePath',
        ],
    },
    filename => Achilles->path_to('root', 'menus', 'top-nav.xml'),
  },
);


1;

