package Acme::CPANModules::BrowsingTableInteractively;

# AUTHORITY
# DATE
# DIST
# VERSION

use strict;
use Acme::CPANModulesUtil::Misc;

my $text = <<'_';

The following are some options on CPAN if you have a table data (typically as an
array of arrayrefs) and want to browse it interactively.

<pm:Tickit::Table::Widget> - this module lets you browse the table in a
terminal. Using the <pm:Tickit> library, the advantages it's supposed to have is
mouse support. It's still very basic: you either have to specify each column
width manually or the width of all columns will be the same. There's no
horizontal scrolling support or a way to see long text in a column. Not updated
since 2016.

<pm:Term::TablePrint> - this module lets you browse the table in a terminal.
Roughly provides the same features like Tickit::Table::Widget with an extra one:
you can press Enter on a row to view it as a "card" where each column will be
displayed vertically, so you can better see a row that has many columns or
columns with long text.

Personally, both the above modules are not satisfactory for me. They are not
that much better than drawing the text table and then filtering the output
through a pager like *less*. At least with `less` you can scroll horizontally or
perform incremental searching (though not interactive filtering of rows).

<pm:Text::Table::HTML::DataTables> - this module bundles the wonderful
DataTables [1] JavaScript library and lets you see your table in a web browser
to interact with. I use this method the most often (usually through my CLI
framework and the option `--format=html+datatables` specified through my CLIs).
The main advantage is incremental searching/filtering. DataTables also lets you
hide/show/reorder columns, change the page size, and so on. This is leaps and
bounds more useful than simply scrolling pages of text provided by
Tickit::Table::Widget or Term::TablePrint.

[1] https://datatables.net/

_

our $LIST = {
    summary => 'Creating a palette of visually distinct colors',
    description => $text,
    tags => ['task'],
};

Acme::CPANModulesUtil::Misc::populate_entries_from_module_links_in_description;

1;
# ABSTRACT:
