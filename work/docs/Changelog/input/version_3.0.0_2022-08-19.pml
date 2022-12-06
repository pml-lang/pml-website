[ch [title Version 3.0.0 2022-08-19]

    PMLC 3.0.0 is a major update.

    The tool has been completely rewritten in Java (PPL is no longer used).
    Some features are therefore no longer available, some will be added again later.

    However, there are only 3 minor changes related to the PML [i syntax]: the [c !] symbol and the [c caption] attribute are no longer supported, and the [c source] attribute name in [c image] nodes must be specified explicitly, as explained below.

    Before deciding to upgrade to version 3.0.0, have a look at the changes described below.

    [ch [title Backwards-Incompatible Changes]
        [list
            [el
                The PMLC command line interface (CLI) has changed.

                Please refer to the [link url=[u:get pml_docs_url]commands_manual/index.html text="Commands Reference Manual"] to see the updated list of commands and arguments.

                Most important breaking change:

                [list
                    [el
                        The [c convert] command has been renamed to [c PML_to_HTML] (shortcut: [c p2h]) and is used as follows:
                        [input
                            ~~~
                            pmlc PML_to_HTML article.pml
                            or:
                            pmlc p2h article.pml
                            ~~~
                        ]
                        The following old (no more supported) syntax:
                        [input
                            ~~~
                            pmlc convert -i article.pml -o output
                            ~~~
                        ]
                        ... has been replaced by:
                        [input
                            ~~~
                            pmlc p2h article.pml -o output/article.html
                            ~~~
                        ]
                        Note that the old [c -o] option specified an output [i directory], while the new option specifies an output [i file].
                    ]

                    [el The [c help] and [c tag_info] commands haven't yet been re-implemented.]
                ]
            ]

            [el
                The [c source] attribute name for [c image] nodes is now required.
                Instead of writing:
                [code
                    ~~~
                    [image flower.png]
                    ~~~
                ]
                ... you need to write:
                [code
                    ~~~
                    [image source=flower.png]
                    ~~~
                ]
            ]

            [el
                The [c !] node-name prefix, [xref node_id=v_2_3_0_deprecated text=deprecated] in version 2.3.0, is no longer supported.
                For example, instead of writing [c \[!ins-file ...\]] you need to write [c \[u:ins_file ...\]].
            ]

            [el
                The [c caption] [i attribute] for nodes [c image], [c audio], [c video], [c youtube_video] and [c table] is no longer supported.
                Please use the new [link url=[u:get pml_docs_url]reference_manual/index.html#node_caption text=caption] [i node] instead.
            ]

            [el
                User-defined nodes have been temporarily disabled.

                They will be reintroduced in a future version.
                Their definition, however, will probably differ significantly from their first (experimental) implementation.
            ]

            [el
                The PMLC GUI (graphical user interface) is no longer supported.
                PMLC is now a command line tool only, to be used in a terminal emulator (shell or CMD).
                The GUI might be reintroduced again in a future version.
            ]

            [el
                Windows/Linux installers are no longer supported.
                They have been replaced by OS-specific standalone binary executables or, alternatively, a cross-platform Java [c jar] executable that can be run on Windows, Linux, and MacOS systems where the JavaRuntime Environment (JRE) has been installed. PMLC can also be build from source code (works on Windows, Linux, and MacOS).
            ]

            [el
                The following two fields have been removed from the [c pml_tags.json] file (created by the [c export_tags] command): [c default_attribute_id] and [c closing_tag].

                The [c position] field has been added to attributes as a replacement for [c default_attribute_id], which is more versatile for future improvements.
            ]
        ]
    ]

    [ch [title New Features]
        [list
            [el
                Besides defining options via the command line, it is now also possible to define them inside the PML document, or in a shared options file.
                Please read [link url=[u:get pml_docs_url]user_manual/index.html#options text="Options"] for more information.
            ]

            [el
                The following PMLC commands have been added:
                [list
                    [el [c info]]
                    [el [c PDML_to_XML]]
                    [el [c PDML_to_standalone]]
                    [el [c create_commands_manual]]
                ]

                Please refer to the [link url=[u:get pml_docs_url]commands_manual/index.html text="Commands Reference Manual"] for more information.
                [note
                    The [c PDML_to_XML] and [c PDML_to_standalone] commands cannot be used to convert PML documents (only PDML documents are supported).
                    Commands [c PML_to_XML] and [c PML_to_standalone] will be added later.
                ]
            ]

            [el
                [link url=[u:get pml_docs_url]user_manual/index.html#customized_css text="Custom CSS files"] are now supported.
            ]

            [el
                The location of media assets is no longer restricted to specific URLs.
                Any URL that is valid in the browser can now be specified.
            ]

            [el
                PMLC is now available as:
                [list
                    [el A single, standalone binary executable for Windows or Linux.]
                    [el A single [c zip] file containing Java [c jar] files and an OS script file to launch PMLC.
                        This requires the Java runtime version 17 or later to be installed on the PC.
                        Hence, PMLC can now be be executed on Windows, Linux, and MacOS.]
                    [el Java source code that can be compiled and build into [c jar] files that can be executed by a JVM (works on Windows, Linux, and MacOS).]
                ]
                [note
                    As stated already, Windows/Linux installers are no longer supported.
                ]
            ]

            [el
                There is now an auto-generated [link url=[u:get pml_docs_url]commands_manual/index.html text="Commands Reference Manual"] describing all PMLC commands.
            ]

            [el
                Semantic node validation is now implemented (but not yet applied to all nodes).

                For example, [c list] nodes can only contain [c el] nodes, and each [c el] node must be a child of a [c list] node.
            ]

            [el
                The PMLC source code (a complete rewrite in Java) is now more modular, featuring many under-the-hood improvements that will be beneficial in the future. PMLC is now much more [i time and space efficient], and everything has been set up to evolve as an open-source project.
            ]

            [el
                The meaning of the PMLC acronym has been changed from [i PML to HTML Converter] to [i PML Companion].
            ]
        ]
    ]

    [ch [title Bug Fixes]

        All known bugs have been fixed.
    ]
]
