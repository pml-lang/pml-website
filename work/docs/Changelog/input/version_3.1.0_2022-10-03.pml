[ch (id=v_3_1_0) [title Version 3.1.0 2022-10-03]

    [ch (id=v_3_1_0_new_features) [title New Features]
        [list
            [el
                Footnotes have been added, after [link url=https://github.com/pml-lang/pml-companion/discussions/85 text=this] discussion.

                For instructions and examples, please refer to the following links in the [i PML Nodes Reference Manual]:
                [list
                    [el [link url=[u:get pml_refman_url]#node_fnote text="Inline Footnote"]]
                    [el [link url=[u:get pml_refman_url]#node_fnotes text="Footnotes Placeholder"]]
                    [el [link url=[u:get pml_refman_url]#node_fnote_def text="Footnote Definition"]]
                    [el [link url=[u:get pml_refman_url]#node_fnote_ref text="Footnote Reference"]]
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
                The [link url=https://pdml-lang.dev/docs/extensions/reference_manual/index.html#raw_text_block_syntax text="Text Block Syntax"] used to define text in raw text blocks is now deprecated and will be removed in an upcoming major version.

                For example, instead of writing:
                [code
                    ~~~
                    [code
                        int i = 1;
                    code]
                    ~~~
                ]

                ... you need to use the [link url=https://pdml-lang.dev/docs/extensions/reference_manual/index.html#raw_text_delimiter_syntax text="Delimited Text Syntax"] and write:
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
