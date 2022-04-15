package Acme::CPANModules::BrowsingTableInteractively;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $LIST = {
    summary => 'List of modules/tools for browsing table data interactively',
    description => <<'_',

This list reviews what tools are available on CPAN and in general to browse
table data interactively.

Let me say first that the best tools are not Perl-based since sadly Perl is not
a favorite choice for writing tools these days. That said, Perl is still a great
glue to help make those tools work together better for you.


1) *Visidata*, <https://www.visidata.org>

This is currently my favorite. It's terminal-based, written in Python, and has
more features than any other tools currently written in Perl, by far. vd has
support for many formats, including CSV, TSV, Excel, JSON, and SQLite. It makes
it particularly easy to create summary for your table like histogram or
sum/average/max/min/etc, or add new columns, or edit some cells. It also has
visualization features like XY-plots.

It has the concept of "sheets" like sheets in a spreadsheet workbook so anytime
you filter rows/columns or create summary or do some other derivation from your
data, you create a new sheet which you can edit, save, and destroy later as
needed and go back to your original table. It even presents settings and
metadata as sheets so you can edit them as a normal sheet.

It has plugins, and I guess it should be simple enough to create a plugin so you
can filter rows or add columns using Perl expression instead of the default
Python, if needed.

My CLI framework <pm:Perinci::CmdLine> (<pm:Perinci::CmdLine::Lite>, v1.918+)
has support for Visidata. You can specify command-line option `--format=vd` to
browse the output of your CLI program in Visidata.


2) *DataTables*, L<https://datatables.net>

DataTables is a JavaScript (jQuery-based) library to add controls to your HTML
table so you can filter rows incrementally, sort rows, reorder columns, and so
on. It also has plugins to do more customized stuffs. I still prefer Visidata
most of the time because I am comfortable living in the terminal, but I
particularly love the incremental searching feature that comes built-in with
DataTables.

My CLI framework <pm:Perinci::CmdLine> (<pm:Perinci::CmdLine::Lite>, v1.918+)
also has support for DataTables. You can specify command-line option
`--format=html+datatables` to output your CLI program's result as HTML table
(using <pm:Text::Table::HTML::DataTables>) when possible and then browse the
output in browser.


3) *Tickit::Widget::Table*, <pm:Tickit::Widget::Table>

This module lets you browse the table in a terminal. Using the <pm:Tickit>
library, the advantages it's supposed to have is mouse support. It's still very
basic: you either have to specify each column width manually or the width of all
columns will be the same. There's no horizontal scrolling support or a way to
see long text in a column. Not updated since 2016.


4) *Term::TablePrint*, <pm:Term::TablePrint>

This module lets you browse the table in a terminal. Provides roughly the same
features like Tickit::Widget::Table with an extra one: you can press Enter on a
row to view it as a "card" where each column will be displayed vertically, so
you can better see a row that has many columns or columns with long text.

There is currently no support beyond the most basic stuffs, so no column hiding,
reordering, etc.


5) *less*

Don't forget this good ol' Unix pager. You can render your table data as an
ASCII table (using modules like <pm:Text::Table::More>, <pm:Text::ANSITable>, or
<pm:Text::Table::Any> for more formats to choose from) then pipe the output to
it. At least with *less* you can scroll horizontally or perform incremental
searching (though not interactive filtering of rows).

_
    entries => [
        {
            module => 'Tickit::Widget::Table',
        },

        {
            module => 'Term::TablePrint',
        },

        {
            module => 'Text::Table::HTML::DataTables',
        },
    ],
};

1;
# ABSTRACT:
