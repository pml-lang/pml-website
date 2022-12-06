{ch title=Practical Markup Language (PML) id=PML_chapter

    Before moving on to the most interesting part of this article, let me briefly introduce the new markup language I mentioned already in the introduction.

    The language is called {i {b Practical} Markup Language (PML)}.

    {quote source=definition of 'practical' in the Cambridge Dictionary
        fitting the needs of a particular situation in a helpful way; helping to solve a problem or difficulty; effective or suitable
    }

    I started the {link url=https://www.pml-lang.dev text=PML project} a few months ago because I couldn't find a markup language that was easy to use {i and} well suited for big, complex documents.

    In the next chapter we'll look at examples of markup code written in PML, compared to code written in other languages. So let's first mention two basic PML syntax rules needed to understand the upcoming examples:

    {list
        {el
            A PML document is a tree of nodes (similar to an XML/XHTML document). Each node starts with a {c \{}, followed by a tag name. Each node ends with a {c \}}. A node can contain text or child nodes.

            For example, here is a node containing text that will be rendered in italics:

            {code highlighter=none
                {i bright}
            code}

            This node starts with {c \{i }, and ends with {c \}}. {c i} is the tag name. In this case {c i} is an abbreviation for {c italic}, which means that the node's content will be rendered in {i italics}. The content of this node is the text {c bright}. The above PML markup code will be rendered as:{nl}
            {i bright}
        }
        {el
            Some nodes have attributes, used to specify additional properties of the node (besides its tag name).

            For example, the title of a chapter is defined with attribute {c title}, as follows:

            {code highlighter=none
                {chapter title=A Nice Surprise
                    Once upon a time ...
                }
            code}
        }
    }

    There is not much more to say about the basic concept of PML syntax. For more insight, and a description of features not used in this article, please consult the {link url=https://www.pml-lang.dev/docs/user_manual/index.html text=PML User Manual}.

    You can download and play around with a free implementation of PML. But please note:

    {adm label=IMPORTANT
        PML is a {i work in progress}. There are missing features, you might encounter bugs, and backwards compatibility is currently not guaranteed.
    }

    I use PML myself to write all my web documents, such as this article. For links to more real-life examples please visit the {link url=https://www.pml-lang.dev/about/faq.html#examples text=FAQ}.
}
