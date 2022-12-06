{ch title=Nested Chapters

    Suppose we are writing an article titled "New Awesome Product" that contains four chapters. The structure looks as follows:

    {code highlighter=none
        New Awesome Product
            Introduction
            More features
            Faster
            Less resources
    code}

    Later on we decide to insert chapter "Advantages" as a parent of the three last chapters. The structure now becomes:

    {code highlighter=none
        New Awesome Product
            Introduction
            Advantages
                More features
                Faster
                Less resources
    code}

    What are the {i changes} required in the markup code to pass from version 1 to version 2? Can you simply insert the code for a new chapter? Let's see.

    {ch title=HTML
        {html
            <table>
                <tr>
                    <td style="vertical-align: top;">
                        <p><b>first version:</b></p>
                        <pre style="font-family: Consolas; background-color:#f5f5f5; border-radius: 7px; padding:1em;">
&lt;h1&gt;New Awesome Product&lt;/h1&gt;
&lt;h2&gt;Introduction&lt;/h2&gt;
&lt;h2&gt;More features&lt;/h2&gt;
&lt;h2&gt;Faster&lt;/h2&gt;
&lt;h2&gt;Less resources&lt;/h2&gt;</pre>
                    </td>
                    <td style="vertical-align: top; padding-left:1em;">
                        <p><b>second version:</b></p>
                        <pre style="font-family: Consolas; background-color:#f5f5f5; border-radius: 7px; padding:1em;">
&lt;h1&gt;New Awesome Product&lt;/h1&gt;
&lt;h2&gt;Introduction&lt;/h2&gt;
<b>&lt;h2&gt;Advantages&lt;/h2&gt;</b>
<b>&lt;h3&gt;</b>More features<b>&lt;/h3&gt;</b>
<b>&lt;h3&gt;</b>Faster<b>&lt;/h3&gt;</b>
<b>&lt;h3&gt;</b>Less resources<b>&lt;/h3&gt;</b></pre>
                    </td>
                </tr>
            </table>
        html}

{-
        {html
            <table>
                <tr>
                    <td style="vertical-align: top;">
        html}

        {b first version:}

        {code highlighter=none
            <h1>New Awesome Product</h1>

            <h2>Introduction</h2>

            <h2>More features</h2>

            <h2>Faster</h2>

            <h2>Less resources</h2>
        code}
        {html
                    </td>
                    <td style="vertical-align: top;">
        html}

        {b second version:}

        {code highlighter=none
            <h1>New Awesome Product</h1>

            <h2>Introduction</h2>

            <h2>Advantages</h2>

            <h3>More features</h3>

            <h3>Faster</h3>

            <h3>Less resources</h3>
        code}
        {html
                    </td>
                </tr>
            </table>
        html}
-}

        {note Code {i changes} are displayed in bold.}
        As shown above, besides inserting the new chapter, we have to change the markup for the three child chapters: {c h2} must be changed to {c h3}
    }

    {ch title=Asciidoctor
        {html
            <table>
                <tr>
                    <td style="vertical-align: top;">
                        <p><b>first version:</b></p>
                        <pre style="font-family: Consolas; background-color:#f5f5f5; border-radius: 7px; padding:1em;">
= New Awesome Product

== Introduction

== More features

== Faster

== Less resources</pre>
                    </td>
                    <td style="vertical-align: top; padding-left:1em;">
                        <p><b>second version:</b></p>
                        <pre style="font-family: Consolas; background-color:#f5f5f5; border-radius: 7px; padding:1em;">
= New Awesome Product

== Introduction

<b>== Advantages</b>

<b>===</b> More features

<b>===</b> Faster

<b>===</b> Less resources</pre>
                    </td>
                </tr>
            </table>
        html}

        Again, we have to change the markup for the three child chapters: {c ==} must be changed to {c ===}

        {note The blank lines between the chapters are required, otherwise the document is not rendered correctly.}
    }

    {ch title=reStructuredText
        {html
            <table>
                <tr>
                    <td style="vertical-align: top;">
                        <p><b>first version:</b></p>
                        <pre style="font-family: Consolas; background-color:#f5f5f5; border-radius: 7px; padding:1em;">
*******************
New Awesome Product
*******************
Introduction
============
More features
=============
Faster
======
Less resources
==============</pre>
                    </td>
                    <td style="vertical-align: top; padding-left:1em;">
                        <p><b>second version:</b></p>
                        <pre style="font-family: Consolas; background-color:#f5f5f5; border-radius: 7px; padding:1em;">
*******************
New Awesome Product
*******************
Introduction
============
<b>Advantages
==========</b>
More features
<b>-------------</b>
Faster
<b>------</b>
Less resources
<b>--------------</b></pre>
                    </td>
                </tr>
            </table>
        html}

        The markup for the three child chapters must be changed: All occurrences of {c =} must be changed to {c -}

        The non-trivial rules for reStructuredText's sections can be looked up {link url=http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html#sections text=here}.
    }

    {ch title=PML
        {html
            <table>
                <tr>
                    <td style="vertical-align: top;">
                        <p><b>first version:</b></p>
                        <pre style="font-family: Consolas; background-color:#f5f5f5; border-radius: 7px; padding:1em;">
{doc title=New Awesome Product
    {ch title=Introduction}
    {ch title=More features}
    {ch title=Faster}
    {ch title=Less resources}
}</pre>
                    </td>
                    <td style="vertical-align: top; padding-left:1em;">
                        <p><b>second version:</b></p>
                        <pre style="font-family: Consolas; background-color:#f5f5f5; border-radius: 7px; padding:1em;">
{doc title=New Awesome Product
    {ch title=Introduction}
    <b>{ch title=Advantages</b>
        {ch title=More features}
        {ch title=Faster}
        {ch title=Less resources}
    <b>}</b>
}</pre>
                    </td>
                </tr>
            </table>
        html}

        In PML, there is no need to change the code of the three child chapters.
    }

    {ch title=Bottom Line
        In all languages, except PML, the markup code of all child chapters must be adapted if a parent chapter is inserted.
        
        This is not a deal-breaker in case of small articles with few chapters. But image you are writing your next big article or book with lots of chapters and frequent changes. Now, the necessity to manually update child chapters can quickly turn into a daunting, boring, and error-prone task.

        {note
            Asciidoctor provides a {c leveloffset} variable that can be used to change the level of chapters. This might be useful in some cases, but it also creates additional unneeded complexity, as can be seen {link url=https://github.com/asciidoctor/asciidoctor/issues/530 text=here} and {link url=https://github.com/asciidoctor/asciidoctor/issues/1616 text=here}.
        }

        A more serious kind of problem can arise in the following situation: Imagine a set of different documents that share some common chapters. To avoid code duplication, the common chapters are stored in different files, and an {c insert file} directive is used in the main documents. This works fine as long as the levels of all common chapters are the same in all documents. But troubles emerge if this is not the case.
        
        It is also worth to mention that HTML, Asciidoctor and reStructuredText don't protect you against wrong chapter hierarchies. For example, you don't get a warning or error if a chapter of level 2 contains a direct child chapter of level 4.

        In a language like PML, the above problems simply don't exist, because the level is not specified in the markup code. All chapters (of any level) are defined with the same, unique syntax. The chapters' tree structure (i.e. the level of each chapter) is automatically defined by the parser. And wrong hierarchies in the markup code, such as a missing {c \}} to close a chapter, are flagged by an error message.
    }
}