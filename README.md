# Asciidoc

Asciidoc is a document markup language that is more powerful than Markdown, but still
human readable.

It covers a big range of document types you can write. From notes and simple README files
to full books.

For more information on Asciidoc, have a look at its homepage
([Asciidoc](http://asciidoc.org/)) and especially at the Asciidoctor project
([Asciidoctor](http://asciidoctor.org/)).

## mjakl/vim-asciidoc

This Vim plugin adds Asciidoc and Asciidoctor syntax highlighting, and folding
capabilities.

Foldlevels are computed by the number of `=` at the start of the line.

It also includes a few snippets that can be used with
[UltiSnips](https://github.com/SirVer/ultisnips) or similar snippet plugins.

The `commentstring` and `comments` variables are set to Asciidoc compatible
values.

## Installation

### Vundle

    Plugin 'mjakl/vim-asciidoc'

## Configuration

To disable the folding of Asciidoc headers, add this to your `.vimrc`:

    let g:vim_asciidoc_folding_disabled=0

The default foldlevel after loading an Asciidoc file is `0`,
to configure theat (`1` is a good choice):

    let g:vim_asciidoc_initial_foldlevel=1

## Credits

The plugin is based on the work of many people, especially the cerators of
these projects:

* [gnperdue/vim-asciidoc](https://github.com/gnperdue/vim-asciidoc)
* [plasticboy/vim-markdown](https://github.com/plasticboy/vim-markdown)
* [Asciidoc](http://asciidoc.org/)
* [Asciidoctor](http://asciidoctor.org/)


