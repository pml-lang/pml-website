{ch title=Whitespace And Indentation id=whitespace

    At first, using whitespace to define structure seams like a good idea. Look at the following example:
    {code highlighter=none
        parent
            child 1
            child 2
    code}
    The structure is very easy to read {i and} write. No noisy special markup characters are needed.

    It is therefore tempting for markup language designers to use whitespace as a simple way to define structure. Unfortunately, this works well only for simple structures, and has other inconveniences we'll see soon.

    Therefore, a simple, but important rule must be applied in markup languages designed to work well with complex content:
    
    {quote source="whitespace-insignificant-rule"
        Whitespace doesn't change the structure or semantics of the document.
    }

    What does this mean?

    First, let us define {i whitespace}: Whitespace is any set of one or more consecutive spaces, tabs, new lines, and other Unicode characters that represent space.

    In our context, the above rule means that:

        {list
            {el
                Within text, a set of {i several} (i.e. more than one) whitespace characters is treated the same as a {i single} space character.
                
                For example, this code:

                {code highlighter=none
                    a beautiful
                        flower
                code}

                ... is identical to this one:

                {code highlighter=none
                    a beautiful flower
                code}
            }

            {el
                Between structural elements, a set of whitespace characters is insignificant.
                
                For example, this code:

                {code highlighter=none
                    <table>

                        <tr>
                code}

                ... is identical to this one:

                {code highlighter=none
                    <table><tr>
                code}
            }
        }

    A special case of whitespace is {i indentation} (leading whitespace at the beginning of a line). The above rule implies that indentation is insignificant too. Indentation doesn't change the result of the final document.

    Applying the {i whitespace-insignificant} rule is important, because it leads to significant advantages:

    {list
        {el
            There is no need to learn, apply and worry about complex whitespace rules (see examples below).
            
            Violating the {i whitespace-insignificant} rule in a markup specification adds unneeded complexity, and can lead to markup code that is ugly, error-prone, and difficult to maintain, especially in the case of nested lists.
        }
        {el
            Whitespace can freely be used by authors to format the markup code in a more understandable, presentable and attractive way (pretty printing). For example, lists (and lists of lists) can be indented to display their structure in a visually clear and maintainable way, without the risk of changing the underlying structure.
            
            {-
            In a collaborative environment, style guides can specify how to use whitespace. This leads to more uniform documents, and increases readability and maintainability for all members.
            -}
        }
        {el
            Text blocks can be copy/pasted without the need to adapt whitespace.
        }
        {el
            If shared text blocks (stored in different files) are imported into several documents with different structures, there is no risk of changing or breaking the structure.
        }
        {el
            There is no unexpected or obscure behavior if the whitespace is not visible for human readers. Some examples:
            {list
                {el a mixture of whitespace characters, such as spaces and tabs, especially when used to indent code}
                {el whitespace at the end of a line}
                {el whitespace in empty lines}
                {el visually impaired (blind) people who can't read whitespace}
            }
            Note: To alleviate the pain, some editors provide a {i display-whitespace} mode.
        }
        {el
            Tools that generate markup code, as well as markup parsers are generally easier to create.
        }
        {el
            In some situations it is useful to reduce whitespace to a minimum (e.g. no new lines), in order to save storage space and improve performance.
        }
    }

    If you want a few examples demonstrating the kind of technical problems that arise if whitespace is significant, you can read:
    {list
        {el {link url=https://www.quora.com/What-are-the-downsides-to-whitespace-indentation-rather-than-requiring-curly-braces text=What are the downsides to whitespace indentation rather than requiring curly braces?}}
        {el {link url=https://fsharpforfunandprofit.com/posts/fsharp-syntax/ text=F# syntax: indentation and verbosity}}
        {el {link url=https://github.com/nodeca/js-yaml/issues/80 text=Issue in nodeca/js-yaml}}
    }

    So, how is whitespace handled in the languages we are discussing in this article?

    {list
        {el title = HTML
            HTML applies the {i whitespace-insignificant} rule.
            
            For a thorough explanation, look at this excellent article written by Patrick Brosset: {link url=https://medium.com/@patrickbrosset/when-does-white-space-matter-in-html-b90e8a7cdd33 text=When does white space matter in HTML?}.
        }

        {el title = Asciidoctor
            In Asciidoctor, whitespace is significant in some cases.
            
            This can lead to surprising behavior and problems with no easy or no satisfying solution. Some examples can be seen {link url=https://github.com/asciidoctor/asciidoctor/issues/686 text=here} and {link url=https://github.com/asciidoctor/asciidoctor/issues/623 text=here}.
        }

        {el title = reStructuredText
            reStructuredText has whitespace rules that are 'a bit surprising'.
            
            For example, writing {c *very*} results in {i very} (text in italics, as expected). However, {c * very*} results in * very* (no italics!), because of the whitespace preceding "very". To understand why, the answer might be found in chapter {link url=http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html#whitespace text=Whitespace} of the specification.

            {-
            https://stackoverflow.com/questions/659227/compare-and-contrast-the-lightweight-markup-languages
            A bit persnickety about whitespace and alignment if you ask me
            -}
        }

        {el title = PML
            Similar to HTML, PML applies the {i whitespace-insignificant} rule.

            There is one exception: For practical reasons, a blank line between two text blocks results in a paragraph break. This means that instead of writing:
            {code highlighter=none
                {p text of paragraph 1}
                {p text of paragraph 2}
            code}
            ... we can simply write:
            {code highlighter=none
                text of paragraph 1
                
                text of paragraph 2
            code}
        }
    }

    {-
        list example:
            item 1
                first paragraph of item 1
                second paragraph of item 1
                    item 1.1
                    item 1.2
                third paragraph of item 1
            item 2
    -}

    {note
        Sometimes, whitespace {i is} significant in text. For example whitespace must be preserved in source code examples. Or, in verbatim text, several consecutive spaces or new lines must be preserved in the final document. All languages support this. However, in reStructuredText it's not always obvious how to it, as shown {link url=https://stackoverflow.com/questions/51198270/how-do-i-create-a-new-line-with-restructuredtext text=here}.
    }
}
