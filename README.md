# PML website

This repository contains the files to create and serve [www.pml-lang.dev](https://www.pml-lang.dev/).

The following root directories are used:

- `work`: contains the source files needed to create the target files in directory `docs`.

- `docs`: contains the website files used by the web server.

- `creator`: contains the static website creator (PSWC).

## Usage And Dependencies

Documents stored in directory `work/docs` are written in [PML](https://www.pml-lang.dev/).
To convert these PML documents to HTML you need to [install PMLC](https://www.pml-lang.dev/downloads/install.html).

To create the website you need Java version 17 or higher to be installed on your system.
You can then execute `creator/create_website.cmd`. This command will read files in directory `work`, and write files into directory `docs`.

If you want to convert a single PML document to HTML, you can execute `bin/create_HTML.cmd` in the document's root directory

## Help And Discussions

Please use [GitHub Discussions](https://github.com/pml-lang/pml-website/discussions).

## Issues

Please use [GitHub Issues](https://github.com/pml-lang/pml-website/issues) to post an issue.

