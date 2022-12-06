{ch title=Other Inconveniences

    As seen already, some markup languages systematically use opening and closing tags. An example would be {c <i>} and {c </i>} in HTML. All XML-based languages, as well as PML belong to this class of languages.

    Without digging into details, here are some drawbacks that can occur in languages that do {i not} (or not always) use pairs of distinct opening/closing tags (e.g. Markdown, Asciidoctor, and reStructuredText):

    {list
        {el title=Editor support
            Creating good, reliable editor support is more difficult to develop.
            Examples of useful editor features are:
            {list
                {el syntax highlighting for markup code}
                {el markup code completion}
                {el visualizing pairs of block start/end marks (e.g. {c \{} and its corresponding {c \}})}
                {el block collapsing/expanding}
            }
            In the case of languages that use distinct opening/closing tags, the two last features work out-of-the-box in some editors. For example, PML uses {c \{} and {c \}} for node boundaries. This is also used in many programming languages (C, Java, Javascript, etc.) and therefore block features implemented for programming languages will also work for PML.

            {- TODO: add picture of PML in VSCode -}
        }
        {el title=Document validation
            Fewer syntax and structure errors can be detected automatically. This can lead to more time spent on debugging documents. Or, even worse, there might be silently ignored errors that end up in wrong output (Did I really fail to spot the missing warning block on page 267 of my 310 pages book?).
        }
        {el title=Parsers
            It is more difficult to create parsers (i.e. programs that read markup code) that work well in all cases. If different parsers read the same markup code, there is an increased risk of getting different results for corner-cases.
        }
        {el title=Auto-generated markup code
            Tools that generate markup code programmatically are more difficult to create. For example, if whitespace is significant, or font styles cannot be nested, then additional state must be updated and tracked, in order to respect these rules.
        }
    }
}