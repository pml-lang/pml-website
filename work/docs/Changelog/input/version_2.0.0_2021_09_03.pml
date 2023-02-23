[ch [title Version 2.0.0 2021-09-03]

    [ch [title Backwards-Incompatible Changes]

        [list
            [el
                The title of a chapter is now defined with a separate node following the [c ch] node.
                The title can no longer be defined with an attribute.
                Instead of writing:
                [code
                    ~~~
                    [ch (title="My Title")
                        text
                    ]
                    ~~~
                ]
                ... we have to write:
                [code
                    ~~~
                    [ch [title My Title]
                        text
                    ]
                    ~~~
                ]
                [note
                    While the [c title] attribute was limited to plain text, any inline markup can now be used in [c title] nodes, e.g.
                    [code
                        ~~~
                        [title A [i nice] side effect]
                        ~~~
                    ]
                ]
            ]

            [el
                The following attributes have been removed from the [c doc] (document) node: [c title], [c authors], and [c date].

                Instead of a [c title] [i attribute], a [c title] [i node] must be used (as for chapters), e.g.
                [code
                    ~~~
                    [doc [title My Title]
                        text
                    ]
                    ~~~
                ]

                Instead of [c authors] and [c date] attributes, these information can simply be written as text, e.g.:
                [code
                    ~~~
                    [doc [title My Title]
                        Author: your name

                        Published: 2021-09-03
                    ]
                    ~~~
                ]

                In a future version there will be a dedicated [c meta] node that will hold data like author, date, version, abstract, etc., as well as other, user-defined meta-data
            ]

            [el
                The [c title] attribute has been removed from all nodes.
                Please refer to the previous two items for [c doc] and [c ch] nodes.
                For all other nodes, the new [c header] node (see below) should be used instead of the old [c title] attribute.

                Example:

                Old code:
                [code
                    ~~~
                    [el (title = "List element header")
                        ...
                    ]
                    ~~~
                ]
                New code:
                [code
                    ~~~
                    [el [header List element header]
                        ...
                    ]
                    ~~~
                ]
            ]

            [el
                Lenient parsing is now supported differently:
                [list
                    [el
                        Attributes must be enclosed in parentheses, except for nodes that have only attributes (no child-nodes)

                        Example: [c \[foo (a1=v1 a2=v2) ... \]]
                    ]
                    [el
                        The [i attribute continuation character] [c \\] at the end of a line is no more necessary and therefore no more supported.
                    ]
                    [el
                        Attribute values that contain spaces must be enclosed in quotes.

                        Example: [c() path = "name with spaces.png"]

                        For more information please refer to the [link (url=https://www.pml-lang.dev/docs/user_manual/index.html#lenient_parsing) user manual].
                    ]
                ]
            ]

            [el
                The syntax for using constants has changed

                The syntax for declaring a constant changed from:
                [code
                    ~~~
                    [const name = value]
                    ~~~
                ]
                ... to:
                [code
                    ~~~
                    [!set name = value]
                    ~~~
                ]

                Using a constant changed from:
                [code
                    ~~~
                    <<value>>
                    ~~~
                ]
                ... to:
                [code
                    ~~~
                    [!get name]
                    ~~~
                ]

                For more information please refer to the [link (url=https://www.pml-lang.dev/docs/user_manual/index.html#parameters) user manual]
            ]

            [el
                The syntax for inserting a file has changed from:
                [code
                    ~~~
                    [insert file=sub-chapter.pml]
                    ~~~
                ]
                ... to:
                [code
                    ~~~
                    [!ins-file path=sub-chapter.pml]
                    ~~~
                ]

                For more information please refer to the [link (url=https://www.pml-lang.dev/docs/user_manual/index.html#file_splitting) user manual]

                [note
                    [c ins-url] and [c ins-env] (OS environment variable) will be added in a future version.
                ]
            ]

            [el
                Command line parameter [c tag_start_stop_symbols] has been removed. A node must start with [c \[], and end with [c \]].
            ]
        ]
    ]

    [ch [title New Features]

        [header Better error handling]
        [list
            [el
                New parameter [c open_file_cmd] for command [c convert].

                This argument enables you to automatically open an editor for the first file in which an error was detected.

                For more information, type the following command in a terminal, and look for parameter [c open_file_cmd]:
                [input
                    ~~~
                    pmlc command_info -command convert
                    ~~~
                ]
            ]
            [el Better format for error messages displayed in the terminal.]
            [el If there are several errors, they are all displayed in the terminal (not just the first one)]
            [el Distinction between canceling errors, non-canceling errors, and warnings]
            [el Customizable error handler (by providing a specific Java class)]
        ]

        [header New block nodes]
        [list
            [el
                [c title]: A title for a chapter (can include markup, included in the table of contents)

                This node replaces the chapter's [c title] [i attribute], which is no more supported.
            ]
            [el
                [c subtitle]: A subtitle for a chapter (can include markup, not included in the table of contents)
            ]
            [el
                [c header]: A header (small title) above text (can include markup, not included in the table of contents)
            ]
        ]
        [note
            Inline markup can be used in [c title], [c subtitle], and [c header] nodes, e.g.
            [code
                ~~~
                [title A [i nice] side effect]
                ~~~
            ]
        ]
        Please refer to the [link (url=https://www.pml-lang.dev/docs/reference_manual/) reference manual] for more information.

        [header More powerful text parameters]
            Text parameters are no more limited to text snippets. They can define markup code to be used repetitively.
            Example:
            [code
                ~~~
                [!set reused_image="[image source=my-image.png width=600 height=400]"]
                ...
                [!get reused_image]
                ...
                [!get reused_image]
                ~~~
            ]
            For more information please refer to the [link (url=https://www.pml-lang.dev/docs/user_manual/index.html#parameters) user manual].
    ]

    [ch [title Bug Fixes]
        Some minor bugs have been fixed.
    ]

    [ch [title Improvements]

        [list
            [el [header Parser]
                The previous PML parser (written in PPL) has been replaced by the pXML parser (written in Java).
                This important change makes PML totally compatible with pXML, and provides a powerful foundation for exciting new features in the future, such as:
                [list
                    [el converting PML to XML, or XML to PML/HTML]
                    [el using XML technology for PML documents (e.g. querying, modifying, transforming and validating a PML AST)]
                    [el using new, future pXML features in PML too (e.g. creating standalone documents, inserting PML snippets retrieved from a URL, etc.)]
                ]
                For more information on pXML please visit its [link (url=https://pxml-lang.github.io) website].
            ]

            [el [header [link (url=https://www.pml-lang.dev/docs/user_manual) User manual]]
                [list
                    [el Updated to the changes in version 2.0.0]
                    [el
                        Chapter [i Text processing] has been completely rewritten, and the following chapters have been added:
                        [list
                            [el Lenient Parsing]
                            [el Whitespace Handling]
                            [el Escape Characters]
                        ]
                    ]
                ]
            ]
        ]
    ]
]
