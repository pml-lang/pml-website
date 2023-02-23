[ch (id=v_3_1_0) [title Version 3.1.0 2022-10-03]

    [ch (id=v_3_1_0_new_features) [title New Features]
        [list
            [el
                Footnotes have been added, after [link (url=https://github.com/pml-lang/pml-companion/discussions/85) this] discussion.

                For instructions and examples, please refer to the following links in the [i PML Nodes Reference Manual]:
                [list
                    [el [link (url=[u:get pml_refman_url]#node_fnote) Inline Footnote]]
                    [el [link (url=[u:get pml_refman_url]#node_fnotes) Footnotes Placeholder]]
                    [el [link (url=[u:get pml_refman_url]#node_fnote_def) Footnote Definition]]
                    [el [link (url=[u:get pml_refman_url]#node_fnote_ref) Footnote Reference]]
                ]

                [note
                    Footnotes are in an incubating state. This means that the nodes and their attributes might change in future versions, based on user feedback.
                ]
            ]
        ]
    ]

    [ch (id=v_3_1_0_deprecated) [title Deprecated Features]
        [list
            [el
                The [link (url=https://pdml-lang.dev/docs/extensions/reference_manual/index.html#raw_text_block_syntax) Text Block Syntax] used to define text in raw text blocks is now deprecated and will be removed in an upcoming major version.

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
            ]
        ]
    ]

    [ch [title Bug Fixes]

        Some minor bugs have been fixed.
    ]
]
