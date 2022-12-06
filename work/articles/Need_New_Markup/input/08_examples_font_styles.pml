{ch title=Font Styles

    Font styles ({i italic}, {b bold}, {c monospace}, etc.) are often used in all kinds of documents, so good support is essential.

    But as we will see, surprises and limits can emerge, as soon as we have to deal with non-trivial cases. Let's look at {i some} examples to illustrate this.

    {ch title=Part of a Sentence in Italics

        Suppose we want to write:{nl}
        They called it {i Harmonic States}, a good name.

        This is a trivial case, and all languages support it.

        {list
            {el title=HTML
                {code highlighter=none
                    They called it <i>Harmonic States</i>, a good name.
                code}
            }

            {el title=Asciidoctor
                {code highlighter=none
                    They called it _Harmonic States_, a good name.
                code}
            }

            {el title=reStructuredText
                {code highlighter=none
                    They called it *Harmonic States*, a good name.
                code}
            }

            {el title=PML
                {code highlighter=none
                    They called it {i Harmonic States}, a good name.
                code}
            }
        }
    }

    {ch title=Part of a Word in Italics

        We want to write:{nl}
        She {i un}wrapped the challenge first.

        {list
            {el title=HTML
                {code highlighter=none
                    She <i>un</i>wrapped the challenge first.
                code}
            }

            {el title=Asciidoctor
                {code highlighter=none
                    She __un__wrapped the challenge first.
                code}
                Note that we have to use two underscores. Using a single underscore (as in the first example), would result in:{nl}
                She _un_wrapped the challenge first.
            }

            {el title=reStructuredText
                {code highlighter=none
                    She *un*\wrapped the challenge first.
                code}
                Note that the letter w has to be escaped (preceded by a backslash) for reasons explained {link url=http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html#character-level-inline-markup text=here}. If the letter is not escaped then a warning is displayed and the result is:{nl}
                She *un*wrapped the challenge first.
            }

            {el title=PML
                {code highlighter=none
                    She {i un}wrapped the challenge first.
                code}
            }
        }
    }

    {ch title=Text in Bold And Italic

        We want to write:{nl}
        They were all {b {i totally flabbergasted}}.

        {list
            {el title=HTML
                {code highlighter=none
                    They were all <b><i>totally flabbergasted</i></b>.
                code}
            }

            {el title=Asciidoctor
                {code highlighter=none
                    They were all *_totally flabbergasted_*.
                code}
            }

            {el title=reStructuredText
                Combining bold and italic is not supported in reStructuredText, but there are some {link url=https://stackoverflow.com/questions/11984652/bold-italic-in-restructuredtext text=complicated workarounds}.
            }

            {el title=PML
                {code highlighter=none
                    They were all {b {i totally flabbergasted}}.
                code}
            }
        }
    }

    {ch title=Real-Life Example

        Here is an example inspired by an Asciidoctor user who {link url=https://github.com/asciidoctor/asciidoctor/issues/2020 text=asked} how to display:{nl}
        {b _id} {i optional}.

        Let's make the exercise a little bit more interesting by also displaying:{nl}
        {i _id} {b optional}.

        {list
            {el title=HTML
                {code highlighter=none
                    <b>_id</b> <i>optional</i>
                    <i>_id</i> <b>optional</b>
                code}
                No surprise here. It just works as expected.
            }

            {el title=Asciidoctor
                Intuitive attempt:
                {code highlighter=none
                    *_id* _optional_
                    __id_ *optional*
                code}
                The first line doesn't work, it produces:{nl}
                {i {b id} _optional}

                However, the second line works, which is a bit counterintuitive.

                If normal text includes a character that is also used for markup (in our case the {c _} preceding {c id}), then the character must be escaped. This is a fundamental rule in pretty much all markup languages. For example in HTML a {c <} must be escaped with {c &lt;}. Many languages (including Asciidoctor and PML) use a backslash prefix (e.g. {c \r}) to escape. So let's rewrite the code:
                {code highlighter=none
                    *\_id* _optional_
                    _\_id_ *optional*
                code}
                This doesn't work in Asciidoctor. It produces{nl}
                {b _id} _optional_{nl}and{nl}\_id {b optional}

                Here is a correct version, as suggested in an answer to the user's question:
                {code highlighter=none
                    *pass:[_]id* _optional_
                    _pass:[_]id_ *optional*
                code}

                Another answer suggests this solution:
                {code highlighter=none
                    *_id* __optional__
                    ___id__ *optional*
                code}

                More edge case are documented in chapters {link url=https://asciidoctor.org/docs/user-manual/#unconstrained-formatting-edge-cases text=Unconstrained formatting edge cases} and {link url=https://asciidoctor.org/docs/user-manual/#escaping-unconstrained-quotes text=Escaping unconstrained quotes} of the Asciidoctor User Manual.
            }

            {el title=reStructuredText
                {code highlighter=none
                    **_id** *optional*
                    *_id* **optional**
                code}
                There is no problem here, because the character {c _} is not used in reStructuredText to define markup.

                However, suppose we wanted to write:{nl}
                {i *id*} {b *optional*}.
                
                Here is the code:
                {code highlighter=none
                    *\*id\** ***optional***
                code}
                Note that the {c *}s in {c id} must be escaped, but the {c *}s in {c optional} don't need to be escaped.
            }

            {el title=PML
                {code highlighter=none
                    {b _id} {i optional}
                    {i _id} {b optional}
                code}
            }
        }
    }

    {ch title=Nested Font Styles

        Nested font styles of the same kind (e.g. {c <i>...<i>...</i>...</i>}) occur rarely in text written by humans, but they could be more or less frequent in auto-generated markup code. If they are not supported then the tool that generates the markup code becomes more complicated to implement, because it must track the font styles that are active already, in order to avoid nesting them.

        So, how is this supported in the different languages?

        {list
            {el title=HTML
                {code highlighter=none
                    <i>This is <i>excellent</i>, isn't it?</i>
                code}
                No problem, it produces{nl}{i This is excellent, isn't it?}
            }

            {el title=Asciidoctor
                {code highlighter=none
                    _This is _excellent_, isn't it?_
                code}
                The above code is obviously ambiguous: Are the italics nested or do we want to italicize "This is " and ", isn't it?".
                When I tested it, the result was neither of it:{nl}{i This is _excellent}, isn’t it?_

                As far as I now, Asciidoctor doesn't support nested font styles of the same kind.
            }

            {el title=reStructuredText
                The reStructuredText specification {link url=http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html#inline-markup text=states}: "Inline markup cannot be nested." However, no error is displayed if it {i is} nested, and the result is unspecified.
            }

            {el title=PML
                {code highlighter=none
                    {i This is {i excellent}, isn't it?}
                code}
                    
                Font styles of the same kind can be nested in PML. The above code results in:{nl}{i This is {i excellent}, isn't it?}
            }
        }
    }
}