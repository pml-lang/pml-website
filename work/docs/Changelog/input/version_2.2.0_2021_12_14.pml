[ch [title Version 2.2.0 2021-12-14]

    [ch [title New Features]
        [list
            [el
                [i User-defined nodes] have been added. They allow you to create your own, customized PML nodes (in addition to PML's standard nodes) and use them in your documents.

                For more information please refer to chapter [link (url=https://www.pml-lang.dev/docs/advanced_features/index.html#user_defined_nodes) User-Defined Nodes].
            ]

            [el
                Unicode escape sequences above FFFF are now supported. This is useful to insert emoticons and some Asian characters.

                The existing syntax for 4 hex digits Unicode escapes is [c \\uhhhh].

                The new (additional) syntax for 8 hex digits Unicode escapes is [c \\Uhhhhhhhh]. Note the uppercase U which is used to denote that 8 hex digits are used.

                Examples are shown in chapter [link (url=https://www.pml-lang.dev/docs/user_manual/index.html#escape_characters) Escape Characters] of the user manual.
            ]

            [el
                Field [c child_nodes_allowed] has been added in the JSON file created with command [c export_tags].
            ]
        ]
    ]

    [ch [title Bug Fixes]

        [list
            [el When Unicode characters above [c FFFF] are inserted into a PML document with copy/paste, they are now correctly written into the HTML target file.]
        ]
    ]
]
