[ch [title Version 1.4.0 2021-04-16]

    [ch [title Backwards-Incompatible Changes]

        Each tag and each attribute have one single identifier. Alternative identifiers are no more supported.
        This change makes PML documents look more uniform and reduces complexity for editor plugins, tools, etc.
        Please consult PML's reference manual if you have PML documents created with a previous version and which use
        identifiers that are no more valid anymore.
    ]

    [ch [title New Features]

        [list
            [el
                Command [c export_tags] has been added.

                This command creates a JSON file containing structured data about PML tags and attributes.
                The JSON file can be used by editor plugins and tools that depend on PML tags and attributes.
                For more information type [c pmlc command_info -command export_tags] in a terminal.
            ]

            [el
                The PML user manual and reference manual are now deployed into directory [c docs] of the PML installation directory.
            ]
        ]
    ]

    [ch [title Bug Fixes]

        The table of contents is now displayed correctly on devices with small screens.
    ]
]
