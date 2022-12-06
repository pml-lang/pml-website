{ch title = Comments

    Good support for comments is important, because they are used frequently, especially in collaborative environments. So, how well are they supported?

    {ch title=Single-Line Comment

        A single-line comment is a line that contains only a comment (no markup). They are supported in all languages.

        {list
            {el title = HTML
                A HTML (or XML) comment starts with {c <!--} at any position, and ends with {c -->} at any subsequent position.
                Example:
                {code highlighter=none
                    <!-- comment -->
                code}
            }

            {el title = Asciidoctor
                A single-line comment starts with {c //} at the beginning of a line:
                {code highlighter=none
                    // comment
                code}
            }

            {el title = reStructuredText
                A single-line comment starts with {c ..} at the beginning of a line and must be followed by an empty line
                {code highlighter=none
                    .. comment
                      
                code}
            }

            {el title = PML
                A comment starts with {c \{-} at any position, and ends with {c -\}} at any subsequent position.
                {code highlighter=none
                    {- comment -}
                code}
            }
        }
    }

    {ch title=Trailing Comment

        A trailing comment appears at the end of a line, after markup code.

        {list
            {el title = HTML
                {code highlighter=none
                    The reason will be explained later <!-- TODO: add link -->
                code}
            }

            {el title = Asciidoctor
                At the time of writing, trailing comments are not supported in Asciidoctor (see {link url=https://github.com/asciidoctor/asciidoctor/issues/991 text=issue 991} on Github).
            }

            {el title = reStructuredText
                Trailing comments are not supported in reStructuredText.
            }

            {el title = PML
                {code highlighter=none
                    The reason will be explained later {- TODO: add link -}
                code}
            }
        }
    }

    {ch title=Inline Comment

        An inline comment is preceded and followed by markup code.

        {list
            {el title = HTML
                {code highlighter=none
                    This is <!-- good --> awesome.
                code}
            }

            {el title = Asciidoctor
                Inline comments are not supported in Asciidoctor.
            }

            {el title = reStructuredText
                Inline comments are not supported in reStructuredText.
            }

            {el title = PML
                {code highlighter=none
                    This is {- good -} awesome.
                code}
            }
        }
    }

    {ch title=Multi-Line Comment

        A multi comment starts at a given line, and ends at a subsequent line.

        {list
            {el title = HTML
                {code highlighter=none
                    <!--
                    comment line 1
                    comment line 2
                    comment line 3
                    -->
                code}
            }

            {el title = Asciidoctor
                A multi-line comment starts with {c ////} on a line, and ends with with {c ////} on a subsequent line:
                {code highlighter=none
                    ////
                    comment line 1
                    comment line 2
                    comment line 3
                    ////
                code}
            }

            {el title = reStructuredText
                The {link url=http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html#comments text=rules} for multi-line comments are a bit 'surprising'. User Cecil Curry puts it more bluntly in a {link url=https://stackoverflow.com/questions/4783814/how-to-comment-a-string-in-restructured-text text=Stackoverflow question}: "It's non-trivial, non-obvious, and tragically fragile."
                
                Here is an example:
                {code highlighter=none
                    ..
                      comment line 1
                      comment line 2
                      comment line 3

                code}
                All lines after the {c ..} must be indented. In practice, this means that unindented text must first be indented to include it in a multi-line comment. If the text is later uncommented then the indent must be removed. Quite inconvenient and fragile, indeed.
            }

            {el title = PML
                {code highlighter=none
                    {-
                    comment line 1
                    comment line 2
                    comment line 3
                    -}
                code}
            }
        }
    }

    {ch title=Nested Comments

        Nested comments are useful when we want to comment a block of text that contains already one or more comments.
        
        Nested comments are not supported in HTML, Asciidoctor, and reStructuredText. However, there are some tricky workarounds in HTML, as explained {link url=https://stackoverflow.com/questions/18145886/html-nested-comments text=here}
        
        PML supports nested comments to any level. Here is a simple example.

        {code highlighter=none
            {-
            These lines
            will not {- nested comment -}
            appear in the final document.
            -}
        code}
    }

    {ch title=Removed Comments

        By definition, comments are not displayed to the readers. But it is also important that comments are {i removed in the final document}, because otherwise readers might be able to see them. This rule is applied in Asciidoctor, reStructuredText, PML, and probably most other markup languages. But not in {i hand-coded} HTML. This can lead to troubles. Imagine the following scenario:

        {list
            {el Boss to Bob: "Please remove my private mobile number from the website".}
            {el Bob to Boss: "Ok".}
            {el Bob comments the HTML code containing the mobile number.}
            {el Boss checks the new version and is happy because his number is no more displayed.}
            {el A website visitor clicks on "Display Source Code" in the browser's context menu, and ... discovers the boss's private mobile number.}
        }

        I had to learn the hard way that silly things like this do happen. And yes, I was the 'Bob'.
    }

    {-
    Temporarily Disabled Comment
        PML:
        { - comment - }

        { -+ comment +- }   disabled comment (no space between - and })
    -}

    {ch title=Conclusion
        The following table summarizes the support for comments:

        {html
            <table style="border: 1px solid black; text-align: center;">
                <tr><th></th><th>&nbsp;Single-line&nbsp;</th><th>&nbsp;Trailing&nbsp;</th><th>&nbsp;Inline&nbsp;</th><th>&nbsp;Multi-line&nbsp;</th><th>&nbsp;Nested&nbsp;</th><th>&nbsp;Removed&nbsp;</th></tr>
                <tr><th style="text-align: right;">HTML</th>            <td>&#x2714;</td><td>&#x2714;</td><td>&#x2714;</td><td>&#x2714;</td><td>&#x274C;</td><td>&#x274C;</td></tr>
                <tr><th style="text-align: right;">Asciidoctor</th>     <td>&#x2714;</td><td>&#x274C;</td><td>&#x274C;</td><td>&#x2714;</td><td>&#x274C;</td><td>&#x2714;</td></tr>
                <tr><th style="text-align: right;">reStructuredText</th><td>&#x2714;</td><td>&#x274C;</td><td>&#x274C;</td><td>&#x2714;</td><td>&#x274C;</td><td>&#x2714;</td></tr>
                <tr><th style="text-align: right;">PML</th>             <td>&#x2714;</td><td>&#x2714;</td><td>&#x2714;</td><td>&#x2714;</td><td>&#x2714;</td><td>&#x2714;</td></tr>
            </table>
        html}
    }

}
