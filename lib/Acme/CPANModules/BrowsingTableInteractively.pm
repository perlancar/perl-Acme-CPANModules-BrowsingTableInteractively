package Acme::CPANModules::BrowsingTableInteractively;

# AUTHORITY
# DATE
# DIST
# VERSION

use strict;

our $LIST = {
    summary => 'Browsing table data interactively',
    description => <<'_',

This list catalogs are some options on CPAN if you have a table data (typically as an
array of arrayrefs) and want to browse it interactively.

_
    entries => [
        {
            module => 'Tickit::Widget::Table',
            description => <<'_',

This module lets you browse the table in a terminal. Using the <pm:Tickit>
library, the advantages it's supposed to have is mouse support. It's still very
basic: you either have to specify each column width manually or the width of all
columns will be the same. There's no horizontal scrolling support or a way to
see long text in a column. Not updated since 2016.

_
        },

        {
            module => 'Term::TablePrint',
            description => <<'_',

This module lets you browse the table in a terminal. Provides roughly the same
features like Tickit::Widget::Table with an extra one: you can press Enter on a
row to view it as a "card" where each column will be displayed vertically, so
you can better see a row that has many columns or columns with long text.

_
        },

        {
            module => 'Text::Table::HTML::DataTables',
            description => <<'_',

Personally, all the terminal modules listed here (<pm:Term::TablePrint> and
<pm:Tickit::Widget::Table>) are currently not satisfactory for me. They are not
that much better than drawing the text table (using something like
<pm:Text::Table::More> or <pm:Text::ANSITable>) and then piping the output
through a pager like *less*. At least with *less* you can scroll horizontally or
perform incremental searching (though not interactive filtering of rows).

Text::Table::HTML::DataTables bundles the wonderful DataTables [1] JavaScript
library and lets you see your table in a web browser to interact with. I use
this method the most often (usually through my CLI framework and the option
`--format=html+datatables` specified through my CLIs). The main advantage is
incremental searching/filtering. DataTables also lets you hide/show/reorder
columns, change the page size, and so on. This is leaps and bounds more useful
than simply scrolling pages of text provided by Tickit::Widget::Table or
Term::TablePrint.

[1] <https://datatables.net/>

_
        },
    ],
};

1;
# ABSTRACT:
