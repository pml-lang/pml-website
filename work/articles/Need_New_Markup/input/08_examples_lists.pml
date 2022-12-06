{ch title=Lists
    In Asciidoctor the kind of problems we have seen with chapter hierarchies can also arise with list hierarchies (e.g. lists that contain lists). The reason is the same as for chapters: {link url=https://asciidoctor.org/docs/user-manual/#nested text=Asciidoctor lists} use different markup code to explicitly specify the level of list items ({c *} for level 1, {c **} for level 2, etc.). Moreover, there are a number of complications you have to be aware of when working with {link url=https://asciidoctor.org/docs/user-manual/#complex-list-content text=complex list content}.

    In reStructuredText, {link url=https://stackoverflow.com/questions/5550089/how-to-create-a-nested-list-in-restructuredtext text=nested lists} are created using indentation and blank lines. This works fine for simple nested lists, but creates other problems in more complex cases (not discussed here). Using whitespace (e.g. blank lines and indentation) to define structure in markup code is a bad idea, as we'll see {xref node_id=whitespace text=later}.

    In HTML and PML, the above problems don't exist with lists because the syntax for parent- and child nodes is the same (not shown here).
}
