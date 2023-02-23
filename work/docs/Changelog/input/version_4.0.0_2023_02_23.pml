[ch (id=v_4_0_0) [title Version 4.0.0 2023-02-23]

    PMLC 4.0.0 is a [i major] update including [i breaking syntax changes], all known bugs fixed, but no new features.

    All planned breaking changes have been implemented, so that fewer breaking changes will appear in future versions.
    
    Before upgrading, please be aware of the breaking changes described below.
    
    [note
        The next PMLC version will possibly provide a [i PML document updater].
        This updater will enable you to automatically update your PML documents written with a previous PMLC version, so that you don't need to update your documents manually.
        If you have a lot of documents to update, you might want to wait for the next version before upgrading.
    ]

    [ch (id=v_4_0_0_breaking) [title Backwards-Incompatible Changes]

        [ch [title Attributes Containing Text Replaced With Child-Nodes]

            All attributes that were used to define text rendered in the document have been removed.
            Instead of using attributes, child nodes must now be used.
            The advantage is that you can now use formatted/styled content, which was not possible with attributes.

            The following nodes are affected: [c link, xref, quote, admon].

            [ch [title Node [c link]]

                Attribute [c text] has been removed. The text for the link must be contained in the node.

                Hence, this code:

                [code
                    ~~~
                    [link url=http://example.com text="an example"]
                    ~~~
                ]

                ... must be replaced by:

                [code
                    ~~~
                    [link (url=http://example.com) an example]
                    ~~~
                ]

                Note that the [c url] attribute must now be enclosed in parenthesis.

                The text can now be formatted/styled by using inline nodes:

                [code
                    ~~~
                    [link (url=http://example.com) a [i striking] example]
                    ~~~
                ]

                If no text is specified, then the URL will be used as text:

                [code
                    ~~~
                    [link (url=http://example.com)]
                    ~~~
                ]

                [note
                    If you have a lot of [c link] nodes to update, you might want to use a regex like the following one in your editor:
                    [code
                        ~~~
                         Search field: \[link\s*url\s*=\s*([^\s]*)\s*text\s*=\s*"?(.*?)"?\]
                        Replace field: [link (url=$1) $2]
                        ~~~
                    ]
                    I used this to update all PDML/PML docs.
                    Note that the above regex might or might not work in your environment.
                    You might need to adapt it.
                    Test well and verify each replacement whenever using regexes to replace text!
                ]
            ]

            [ch [title Node [c xref]]

                Attribute [c text] has been removed. The text must be contained in the node.

                Moreover attribute [c node_id] has been renamed to [c ref_id].

                Hence, this code:

                [code
                    ~~~
                    [xref node_id=intro text="chapter Introduction"]
                    ~~~
                ]

                ... must be replaced by:

                [code
                    ~~~
                    [xref (ref_id=intro) chapter Introduction]
                    ~~~
                ]

                Note that the [c ref_id] attribute must be enclosed in parenthesis.

                The text can now be formatted/styled by using inline nodes:

                [code
                    ~~~
                    [xref (ref_id=H2O) H[sub 2]O]
                    ~~~
                ]

                In case of a reference to a chapter, the chapter's title will be used as text if no text is explicitly specified:

                [code
                    ~~~
                    [ch (id=intro) [title Introduction]
                        This article ...
                    ]
                    ...
                    As said in chapter [xref (ref_id=intro)], ...
                    ~~~
                ]

                Text used for the above link: Introduction.
            ]

            [ch [title Node [c quote]]

                Attribute [c source] has been removed. A new node named [c qsource] is used within node [c quote] to define the source of the quote.

                Hence, this code:

                [code
                    ~~~
                    [quote (source="Scott Adams")
                        Simplicity transforms ordinary into amazing.
                    ]
                    ~~~
                ]

                ... must be replaced by:

                [code
                    ~~~
                    [quote
                        Simplicity transforms ordinary into amazing.
                        [qsource Scott Adams]
                    ]
                    ~~~
                ]

                Inline nodes can be used in [c qsource] to style the source, add links, etc.

                The em-dash (\u2014 Unicode U+2014) that was previously rendered in front of every source (using CSS selector [c .pml-quote-source::before]) has been removed, because it is not always desired.

                If you want to prefix the source with a simple hyphen, or a real em-dash, you can write:

                [code
                    ~~~
                    [qsource - name]
                    [qsource \u2014 name]
                    ~~~
                ]

                Note: A future PML version might provide a specific em-dash node, so that you can write:
                [code
                    ~~~
                    [qsource [emdash] name]
                    ~~~
                ]

                Alternatively you could also use a modified CSS file to always render an em-dash.
            ]

            [ch [title Node [c admon]]

                Attribute [c label] has been removed.
                A new node named [c alabel] is used within node [c admon] to define the label of the admonition.

                Hence, this code:

                [code
                    ~~~
                    [admon (label=Tip)
                        You can also ...
                    ]
                    ~~~
                ]

                ... must be replaced by:

                [code
                    ~~~
                    [admon [alabel Tip]
                        You can also ...
                    ]
                    ~~~
                ]

                Inline nodes can be used in [c alabel] to style it.
            ]
        ]

        [ch [title Additional Breaking Changes]

            [list
                [el
                    Node [c options] must now be defined [i before] node [c doc] (not inside node [c doc]).
                    Hence this code:

                    [code
                        ~~~
                        [doc
                            [options
                                [TOC_title Aperçu]
                            ]
                            text
                        ]
                        ~~~
                    ]

                    ... must be replaced by:

                    [code
                        ~~~
                        [options
                            [TOC_title Aperçu]
                        ]
                        [doc
                            text
                        ]
                        ~~~
                    ]
                ]

                [el
                    Node [c table_data] has been renamed to [c sim_table] (simple table).

                    Hence this code:

                    [code
                        ~~~
                        [table_data
                            ~~~
                            cell 1.1, cell 1.2
                            cell 2.1, cell 2.2
                            ~~~
                        ]
                        ~~~
                    ]

                    ... must be replaced by:

                    [code
                        ~~~
                        [sim_table
                            ~~~
                            cell 1.1, cell 1.2
                            cell 2.1, cell 2.2
                            ~~~
                        ]
                        ~~~
                    ]

                    [note
                        In the future, node [c sim_list] will be added (as a counterpart of [c sim_table]).
                        This will allow you to define simple, non-nested lists with a much more succinct syntax.
                    ]
                ]

                [el
                    
                    The so-called [i Text Block Syntax] used to define raw text blocks was [xref (ref_id=v_3_1_0_deprecated) deprecated] in version 3.1.0. and has now been removed.

                    For example, instead of writing:
                    [code
                        ~~~
                        [code
                            int i = 1;
                        code]
                        ~~~
                    ]

                    ... you need to use the [link (url=https://pdml-lang.dev/docs/extensions/reference_manual/index.html#raw_text_delimiter_syntax) Delimited Text Syntax] and write:
                    [code
                        """
                        [code
                            ~~~
                            int i = 1;
                            ~~~
                        ]
                        """
                    ]

                    The following nodes are affected by this change: [c code, input, output, html, sim_table].
                ]

                [el
                    Command [c export_tags] has been renamed to [c export_meta_data].

                    The default output file name has changed from [c pml_tags.json] to [c PML_meta_data.json].

                    The content of the JSON file has changed as follows:
                    [list
                        [el Field [c pml_tags] has been renamed to [c pml_meta].]
                        [el Field [c tags] has been renamed to [c nodes].]
                    ]
                ]

                [el
                    The behavior of CLI argument [c CSS_files] (command [c PML_to_HTML]) has changed.

                    When a directory is specified then only files with extension [c .css] will be copied.

                    The behavior remains unchanged if a file is specified. The file will be copied into the target directory, regardless of its extension.

                    This change has been discussed [link (url=https://github.com/pml-lang/pml-companion/issues/93) here].
                ]

                [el
                    The individual repositories for PML documentation (e.g. user manual, reference manuals, etc.) have been removed, and their content has been transferred into a single [link (url=https://github.com/pml-lang/pml-website) pml-website] repository.

                    All issues and discussion have been transferred too.
                ]

                [el
                    The PMLC source code has been substantially refactored to make it more modular and maintainable.
                    PMLC also uses the latest version of the PDML parser, as well as the latest version of GraalVM to create standalone OS binaries.
                ]
            ]
        ]
    ]


    [ch (id=v_4_0_0_new_logo) [title New Logo]

        The following new PML logo is now [link (url=https://pml-lang.dev/) used]:
        [image source=images/pml_logo.svg height=100]
        The 'm' within the square brackets stands for 'markup'.
        
        The above logo is a variation of the following [link (url=https://pdml-lang.dev/) PDML] logo (many thanks for this contribution by [link (url=https://github.com/slanden) Shelby Landen]).
        [image source=images/pdml_logo.svg height=100]
        The 'dm' within the square brackets stands for 'data and markup'.
    ]

    [ch [title Bug Fixes]

        All known bugs have been fixed, including the following ones:
        [link (url=https://github.com/pml-lang/pml-companion/issues/86) #86],
        [link (url=https://github.com/pml-lang/pml-companion/issues/87) #87],
        [link (url=https://github.com/pml-lang/pml-companion/issues/90) #90],
        [link (url=https://github.com/pml-lang/pml-companion/issues/91) #91],
        [link (url=https://github.com/pml-lang/pml-companion/issues/93) #93],
        [link (url=https://github.com/pml-lang/pml-companion/issues/96) #96],
        [link (url=https://github.com/pml-lang/pml-companion/issues/98) #98])
    ]
]
