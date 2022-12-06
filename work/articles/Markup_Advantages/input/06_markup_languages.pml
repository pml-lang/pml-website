    {ch title=Document Markup Languages

        {note Readers familiar with markup languages can {xref node_id=advantages text=skip} the following two chapters.}

        {ch title=Basic Concept
            
            A {i document markup language} consists of a set of rules and symbols (special characters) used to annotate plain text. The annotated text can then be read by a {i markup processor} to generate styled documents (e.g. HTML, PDF, ePub, etc.) or any other kind of data.

            For example, in some markup languages an underline ({c _}) is used to emphasize text and render it in italics. Writing:

            {code highlighter=none
                A _good_ girl.
            code}

            ... results in:{nl}
            A {i good} girl.

            Hence, {i markup code} is just plain text intermixed with markup instructions.

            A {i markup document} consists of one or more text files that contain markup code.

            There are {link url=https://en.wikipedia.org/wiki/List_of_document_markup_languages text=many} document markup languages to choose from.
        }

        {ch title=Simple Example
            Suppose you create a text file with the following content (written in Markdown syntax):

            {code highlighter=none
                # Simple Markup Example

                This is just a _simple_ example.

                Here is a list:

                - orange
                - banana
                - apple
            code}

            After the above text has been converted to HTML (by the markup processor), the result in the browser looks like this:

            {img src=images/simple_example.png align=center}

            The style of the final document can be customized. This is often done by modifying a separate CSS files.
        }

        {insert file=06_markup_advantages.pml}
    }
