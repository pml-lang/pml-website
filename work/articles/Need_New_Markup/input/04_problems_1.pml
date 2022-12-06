{ch title=Inconveniences / Part 1

    Let us first consider some well-known markup languages and show some inconveniences.

    {ch title=HTML
        HTML is the language of the web. So, why not write everything in HTML? The reasons to discard this option are well known. Let's quickly recapitulate them:

        {list
            {el
                HTML is cumbersome to write. Nobody wants to write XML code by hand, although editors with HTML/XML support might help.
            }

            {el Some frequent writing tasks require non-trivial HTML code.

                Suppose we want to display a horizontally centered image with a simple black border and a link. The HTML code an inexperienced user would expect to work could look like this:
                {code highlighter=none
                    <img src="ball.png" align="center" border="yes" link="http://www.example.com/ball">
                code}
                But the code he or she actually has to write is cumbersome and there are different ways to do it. Here is one way:
                {code highlighter=none
                    <div style="text-align: center">
                        <a href="http://www.example.com/ball">
                            <img src="ball.png" style="border:1px solid black;">
                        </a>
                    </div>
                code}
            }

            {el
                HTML lacks "productivity features for writers", such as:
                {list
                    {el Automatic generation of a table of contents, index, glossary, etc.}
                    {el Variables used to hold recurring values}
                    {el Splitting a document into different files}
                }
            }

            {el
                Other inconveniences will be shown later.
            }
        }
    }

    {ch title=Markdown

        {link url=https://en.wikipedia.org/wiki/Markdown text=Markdown} is a very popular, lightweight markup languages. It is easy to learn and use, and well suited for short and simple texts, such as comments in forums, readme files, etc.

        However, it suffers from the following problems that make it unsuitable for complex or big documents (e.g. technical articles, user manuals, and books):
        {list

            {el
                The original Markdown defined by John Gruber lacks many features expected by writers, such as tables (only embedded HTML tables are supported), automatic generation of table of contents, syntax highlighting, file splitting, etc.
            }

            {el
                There is no unique, unambiguous specification for Markdown. Many flavors of Markdown exists, with different rules and different features supported. This leads to incompatibility issues when markup code is shared. {link url=https://commonmark.org/ text=CommonMark} is an attempt to solve this problem. However, the specification is huge and not completed yet (at the time of writing (February 2019) version 0.28, dated 2017-08-01, is the latest one).
            }

            {el
                Markdown has similar problems and limitations to those shown in chapter {xref node_id=problems}. These flaws can quickly become an annoyance when you use Markdown for anything else than short, simple texts.
            }
        }

        Here is a list of articles with more information about Markdown's shortcomings:
        {list
            {el {link url=http://www.ericholscher.com/blog/2016/mar/15/dont-use-markdown-for-technical-docs/ text=Why You Shouldn’t Use “Markdown” for Documentation}}
            {el {link url=https://www.red-gate.com/simple-talk/blogs/sundown-on-markdown/ text=Sundown on Markdown?}}
            {el {link url=http://www.wilfred.me.uk/blog/2012/07/30/why-markdown-is-not-my-favourite-language/ text=Why Markdown Is Not My Favourite Language}}
        }
    }
    
    {ch title=Docbook

        {link url=https://docbook.org/ text=Docbook} is an XML-based markup language that uses semantic tags to describe documents.
        
        It has probably the most complete set of features among all markup languages. It has been used by many authors, is pre-installed on some Linux distributions, and is supported by many organizations and publishers. Docbook has been successfully used to create, publish, and print lots of big documents of all kinds.

        But it has the following drawbacks:

        {list
            {el
                It uses XML and a verbose syntax.
                
                Look at the following example, borrowed from {link url=https://en.wikipedia.org/wiki/DocBook text=Wikipedia}:
                {code highlighter=none
                    <?xml version="1.0" encoding="UTF-8"?>
                    <book xml:id="simple_book" xmlns="http://docbook.org/ns/docbook" version="5.0">
                        <title>Very simple book</title>
                        <chapter xml:id="chapter_1">
                            <title>Chapter 1</title>
                            <para>Hello world!</para>
                            <para>I hope that your day is proceeding <emphasis>splendidly</emphasis>!</para>
                        </chapter>
                        <chapter xml:id="chapter_2">
                            <title>Chapter 2</title>
                            <para>Hello again, world!</para>
                        </chapter>
                    </book>        
                code}
                Would you enjoy writing and maintaining such code?

                Now compare the above code with the following one, written in a modern markup language like Asciidoctor:
                {code highlighter=none
                    = Very simple book

                    == Chapter 1

                    Hello world!

                    I hope that your day is proceeding _splendidly_!

                    == Chapter 2

                    Hello again, world!
                code}
            }

            {el Docbook is complex, and therefore hard to learn and use.}

            {el Output produced by Docbook, especially HTML, looks old-fashioned (see examples on its website). Of course, presentation can be customized, but this is not an easy task.}
        }
    }

    {ch title=LaTeX
        {link url=https://en.wikipedia.org/wiki/LaTeX text=LaTeX} is a high-quality typesetting system. It is widely used in academia to create scientific documents. It is considered to be the best option for writing PDF documents containing lots of mathematic formulas and equations.

        I never used LaTeX myself, because I don't write scientific documents - just articles and books to be published on the web. Therefore, I don't want to comment on it too much. However, it is important to mention it because of its popularity in academia.

        LaTeX's unique syntax seems verbose to me, and a bit complex. Here is an abbreviated example from {link url=https://en.wikipedia.org/wiki/LaTeX#Example text=Wikipedia}:

        {code highlighter=none
            \documentclass{article}
            \usepackage{amsmath}
            \title{\LaTeX}

            \begin{document}
                \maketitle
                \LaTeX{} is a document preparation system ...

                % This is a comment
                \begin{align}
                    E_0 &= mc^2 \\
                    E &= \frac{mc^2}{\sqrt{1-\frac{v^2}{c^2}}}
                \end{align}  
            \end{document}
        code}

        The article {link url=https://texfaq.org/FAQ-LaTeX2HTML text=Conversion from (La)TeX to HTML} states that converting LaTeX math to HTML is "a challenge".

        Some markup languages allow LaTeX snippets to be embedded in their markup code, which can be very useful if you need the power of LaTeX for maths. There are other options to display maths on the web, such as {link url=https://www.mathjax.org/ text=Mathjax} or {link url=https://en.wikipedia.org/wiki/MathML text=MathML} (an ISO standard and part of HTML5).
    }

    {ch title=Popular for Big Documents

        A impressive number of markup languages have emerged. Many of them use a syntax similar to Markup, and are therefore easy to learn and use. Some have more features than Markdown and are even extensible. However, as soon as we start writing complex documents, corner-cases and limits diminish the initial joy of using them.

        Two popular markup languages used for big documents are Asciidoctor (an improved version of {link url=https://en.wikipedia.org/wiki/AsciiDoc text=Asciidoc}), and {link url=https://en.wikipedia.org/wiki/ReStructuredText text=reStructuredText} (an improved version of StructuredText). We will have a look at them soon.
    }
}
