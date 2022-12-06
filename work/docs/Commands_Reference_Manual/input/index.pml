[doc [title PMLC Commands Reference Manual]

    [table 
        [tr [tc [b PML Version]][tc PMLC 3.1.0 2022-10-03]]
        [tr [tc [b License]][tc [link url=https://creativecommons.org/licenses/by-nd/4.0/ text="CC BY-ND 4.0"]]]
        [tr [tc [b Author and Copyright]][tc Christian Neumanns]]
        [tr [tc [b Website]][tc [link url=https://www.pml-lang.dev/]]]
    ]
    [ch ( id="introduction" ) [title Introduction]
        [p This document describes the commands supported by PMLC's command line interface (CLI).]
        [note 
            [p All command names and options are case-insensitive. For example, instead of writing [c PML_to_HTML], you can also write [c pml_to_html].]
        ]
    ]

    [ch ( id="commands" ) [title Commands]
        [ch ( id="command_PML_to_HTML" ) [title Convert PML to HTML]
            [b Name: ][c PML_to_HTML]

            [b Alternative name: ][c p2h]

            [header Description]
            [p Convert a PML document into an HTML document.]

            [header Examples]
            [input 
                ~~~
                pmlc p2h article.pml
                pmlc p2h --output ../website/docs/about/index.html about.pml
                ~~~
            ]

            [header Input Parameters]
            [list 
                [el 
                    [header PML Input File]
                    [table 
                        [tr [tc [b Name]][tc input]]
                        [tr [tc [b Alternative name]][tc i]]
                        [tr [tc [b Is positional parameter]][tc Yes (# 1)]]
                        [tr [tc [b Description]][tc The path of the PML file to be converted to HTML.[nl]If this parameter is not specified, or if the value is explicitly set to 'stdin' then the PML input is read from the OS's standard input device.]]
                        [tr [tc [b Type]][tc file_path or null]]
                        [tr [tc [b Required]][tc no]]
                        [tr [tc [b Default Value]][tc null]]
                        [tr [tc [b Example(s)]][tc input/text/article.pml]]
                    ]
                ]

                [el 
                    [header CSS Files]
                    [table 
                        [tr [tc [b Name]][tc CSS_files]]
                        [tr [tc [b Alternative name]][tc css]]
                        [tr [tc [b Is positional parameter]][tc No]]
                        [tr [tc [b Description]][tc This parameter is used to explicitly specify one or more CSS files to be used in the final HTML document.[nl][nl]The value is a comma separated list of directories and/or files.[nl]If a directory is specified, then all files in the directory (including files in sub-directories) are used.[nl]All directory and file paths can be absolute or relative.[nl]Each file must be a valid CSS file.[nl][nl]By default, file(s) in sub-directory 'config/PML_to_HTML/css' of PMLC's shared data directory are used.[nl]If these default files are to be used together with other CSS files specified by this parameter, then the default files location must also explicitly be specified in the parameter]]
                        [tr [tc [b Type]][tc directory_or_file_paths or null]]
                        [tr [tc [b Required]][tc no]]
                        [tr [tc [b Default Value]][tc \[C:\\Users\\Lisa\\AppData\\Roaming\\PML_Companion\\3_0\\config\\PML_to_HTML\\css\\pml-default.css, C:\\Users\\Lisa\\AppData\\Roaming\\PML_Companion\\3_0\\config\\PML_to_HTML\\css\\pml-print-default.css\]]]
                        [tr [tc [b Example(s)]][tc ../../shared/css, css]]
                    ]
                ]

                [el 
                    [header HTML Footer Template File]
                    [table 
                        [tr [tc [b Name]][tc HTML_page_footer]]
                        [tr [tc [b Alternative name]][tc pf]]
                        [tr [tc [b Is positional parameter]][tc No]]
                        [tr [tc [b Description]][tc The path of the HTML footer template file.[nl]The path can be absolute or relative]]
                        [tr [tc [b Type]][tc file_path or null]]
                        [tr [tc [b Required]][tc no]]
                        [tr [tc [b Default Value]][tc C:\\Users\\Lisa\\AppData\\Roaming\\PML_Companion\\3_0\\config\\PML_to_HTML\\html\\default_html_footer_template.txt]]
                        [tr [tc [b Example(s)]][tc ../../shared/HTML_footer.txt]]
                    ]
                ]

                [el 
                    [header HTML Header Template File]
                    [table 
                        [tr [tc [b Name]][tc HTML_page_header]]
                        [tr [tc [b Alternative name]][tc ph]]
                        [tr [tc [b Is positional parameter]][tc No]]
                        [tr [tc [b Description]][tc The path of the HTML header template file.[nl]The path can be absolute or relative]]
                        [tr [tc [b Type]][tc file_path or null]]
                        [tr [tc [b Required]][tc no]]
                        [tr [tc [b Default Value]][tc C:\\Users\\Lisa\\AppData\\Roaming\\PML_Companion\\3_0\\config\\PML_to_HTML\\html\\default_html_header_template.txt]]
                        [tr [tc [b Example(s)]][tc ../../shared/HTML_header.txt]]
                    ]
                ]

                [el 
                    [header Table of Contents Max Level]
                    [table 
                        [tr [tc [b Name]][tc TOC_max_level]]
                        [tr [tc [b Alternative name]][tc tm]]
                        [tr [tc [b Is positional parameter]][tc No]]
                        [tr [tc [b Description]][tc The maximum chapter level that is included in the table of contents.]]
                        [tr [tc [b Type]][tc integer32]]
                        [tr [tc [b Required]][tc no]]
                        [tr [tc [b Default Value]][tc 100]]
                        [tr [tc [b Example(s)]][tc 4]]
                    ]
                ]

                [el 
                    [header Table of Contents Position]
                    [table 
                        [tr [tc [b Name]][tc TOC_position]]
                        [tr [tc [b Alternative name]][tc tp]]
                        [tr [tc [b Is positional parameter]][tc No]]
                        [tr [tc [b Description]][tc The position of the table of contents.[nl]Valid values are:left, top, none (case-insensitive)]]
                        [tr [tc [b Type]][tc tocposition]]
                        [tr [tc [b Required]][tc no]]
                        [tr [tc [b Default Value]][tc LEFT]]
                        [tr [tc [b Allowed Values]][tc left, top, none (case-insensitive)]]
                        [tr [tc [b Example(s)]][tc left]]
                    ]
                ]

                [el 
                    [header Table of Contents Title]
                    [table 
                        [tr [tc [b Name]][tc TOC_title]]
                        [tr [tc [b Alternative name]][tc tt]]
                        [tr [tc [b Is positional parameter]][tc No]]
                        [tr [tc [b Description]][tc The title of the table of contents.]]
                        [tr [tc [b Type]][tc string or null]]
                        [tr [tc [b Required]][tc no]]
                        [tr [tc [b Default Value]][tc Table of Contents]]
                        [tr [tc [b Example(s)]][tc Contents]]
                    ]
                ]

                [el 
                    [header Source Code Highlighter]
                    [table 
                        [tr [tc [b Name]][tc highlighter]]
                        [tr [tc [b Alternative name]][tc hi]]
                        [tr [tc [b Is positional parameter]][tc No]]
                        [tr [tc [b Description]][tc The name of the highlighter used to highlight source code.[nl]Valid values are:highlightjs, prism, none (case-insensitive)]]
                        [tr [tc [b Type]][tc sourcecodehighlighter]]
                        [tr [tc [b Required]][tc no]]
                        [tr [tc [b Default Value]][tc NONE]]
                        [tr [tc [b Allowed Values]][tc highlightjs, prism, none (case-insensitive)]]
                        [tr [tc [b Example(s)]][tc none]]
                    ]
                ]

                [el 
                    [header Omit CSS]
                    [table 
                        [tr [tc [b Name]][tc omit_CSS]]
                        [tr [tc [b Alternative name]][tc oc]]
                        [tr [tc [b Is positional parameter]][tc No]]
                        [tr [tc [b Description]][tc If set to yes (true), CSS classes are omitted in the resulting HTML.]]
                        [tr [tc [b Type]][tc boolean]]
                        [tr [tc [b Required]][tc no]]
                        [tr [tc [b Default Value]][tc false]]
                        [tr [tc [b Allowed Values]][tc yes, no, true, false (case-insensitive)]]
                        [tr [tc [b Example(s)]][tc yes]]
                    ]
                ]

                [el 
                    [header Open File OS Command]
                    [table 
                        [tr [tc [b Name]][tc open_file_cmd]]
                        [tr [tc [b Alternative name]][tc ofc]]
                        [tr [tc [b Is positional parameter]][tc No]]
                        [tr [tc [b Description]][tc This parameter specifies an OS command template to open an editor for the first file in which an error was detected.[nl]The following placeholders can be used:[nl]\[\[file\]\][nl]    the full path of the file in which the error was detected[nl]\[\[line\]\][nl]    the line number of the error (first line = 1)[nl]\[\[column\]\][nl]    the column number of the error (first column = 1)[nl][nl]Note:[nl]Be careful to correctly quote file paths that include spaces.[nl]Different OS environments have different rules. Please consult your OS documentation for further information.[nl]]]
                        [tr [tc [b Type]][tc string or null]]
                        [tr [tc [b Required]][tc no]]
                        [tr [tc [b Default Value]][tc null]]
                        [tr [tc [b Example(s)]][tc // open VSCode in Windows:[nl]--open_file_cmd "cmd.exe /c code --goto \\"\[\[file\]\]:\[\[line\]\]:\[\[column\]\]\\""[nl]// alternative (replace {username} with the name on your machine):[nl]--open_file_cmd "\\"C:\\Users\\{username}\\AppData\\Local\\Programs\\Microsoft VS Code\\Code.exe\\" --goto \\"\[\[file\]\]:\[\[line\]\]:\[\[column\]\]\\""[nl][nl]// open Sublime Text in Windows (subl must be on the OS path)[nl]--open_file_cmd "cmd.exe /c subl \\"\[\[file\]\]:\[\[line\]\]:\[\[column\]\]\\""[nl]]]
                    ]
                ]

                [el 
                    [header HTML Output File]
                    [table 
                        [tr [tc [b Name]][tc output]]
                        [tr [tc [b Alternative name]][tc o]]
                        [tr [tc [b Is positional parameter]][tc No]]
                        [tr [tc [b Description]][tc The path of the HTML file to be created.[nl][nl]The default value is defined as follows:[nl]- If the input is a file, then the output will be 'output/{input_file_name}.html' (where {input_file_name} is replaced by the input file's name, without its extension).[nl]- If the input is read from STDIN, then the output is written to STDOUT.[nl][nl]If the value of this parameter is explicitly set to 'stdout', then the output is written to STDOUT]]
                        [tr [tc [b Type]][tc file_path or null]]
                        [tr [tc [b Required]][tc no]]
                        [tr [tc [b Default Value]][tc null]]
                        [tr [tc [b Example(s)]][tc ../website/blog/top10-brain-boosters/index.html]]
                    ]
                ]

                [el 
                    [header Resources]
                    [table 
                        [tr [tc [b Name]][tc resources]]
                        [tr [tc [b Alternative name]][tc r]]
                        [tr [tc [b Is positional parameter]][tc No]]
                        [tr [tc [b Description]][tc A comma separated list of resources that will be copied into the output directory.[nl][nl]Each resource can be a directory or file path. Each path can be absolute or relative.[nl]If a directory is specified then all files in the directory are used, including files in subdirectories.[nl]By default directory 'resources' in the current working directory is used.]]
                        [tr [tc [b Type]][tc directory_or_file_paths or null]]
                        [tr [tc [b Required]][tc no]]
                        [tr [tc [b Default Value]][tc null]]
                        [tr [tc [b Example(s)]][tc ../../shared/images, resources]]
                    ]
                ]

                [el 
                    [header Verbosity]
                    [table 
                        [tr [tc [b Name]][tc verbosity]]
                        [tr [tc [b Alternative name]][tc vb]]
                        [tr [tc [b Is positional parameter]][tc No]]
                        [tr [tc [b Description]][tc The level of verbosity.[nl]Defines which kinds of messages are displayed when the command is executed.[nl]Valid values are:quiet, error, warning, info, all (case-insensitive)]]
                        [tr [tc [b Type]][tc loglevel]]
                        [tr [tc [b Required]][tc no]]
                        [tr [tc [b Default Value]][tc INFO]]
                        [tr [tc [b Allowed Values]][tc quiet, error, warning, info, all (case-insensitive)]]
                        [tr [tc [b Example(s)]][tc all]]
                    ]
                ]

            ]
        ]

        [ch ( id="command_info" ) [title Display PMLC Info]
            [b Name: ][c info]

            [header Description]
            [p Write info about PMLC to the standard output device.]

            [header Examples]
            [input 
                ~~~
                pmlc info
                ~~~
            ]

            [header Input Parameters]
            [p This command has no input parameters]
        ]

        [ch ( id="command_version" ) [title Display PMLC's Version Number]
            [b Name: ][c version]

            [header Description]
            [p Write the PMLC version number to the standard output device.]

            [header Examples]
            [input 
                ~~~
                pmlc version
                ~~~
            ]

            [header Input Parameters]
            [p This command has no input parameters]
        ]

        [ch ( id="command_PDML_to_XML" ) [title Convert PDML to XML]
            [b Name: ][c PDML_to_XML]

            [b Alternative name: ][c pdml2xml]

            [header Description]
            [p Convert a PDML document into a standalone XML document.[nl]Note: This command is not suitable to convert PML documents into XML.]

            [header Examples]
            [input 
                ~~~
                pdml pdml2xml input/doc.pdml output/doc.xml
                ~~~
            ]

            [header Input Parameters]
            [list 
                [el 
                    [header PDML Input File]
                    [table 
                        [tr [tc [b Name]][tc input]]
                        [tr [tc [b Alternative name]][tc i]]
                        [tr [tc [b Is positional parameter]][tc Yes (# 1)]]
                        [tr [tc [b Description]][tc The path of the PDML file to be converted to XML. The path can be absolute or relative.]]
                        [tr [tc [b Type]][tc file_path or null]]
                        [tr [tc [b Required]][tc no]]
                        [tr [tc [b Default Value]][tc null]]
                        [tr [tc [b Example(s)]][tc text/input/index.pml]]
                    ]
                ]

                [el 
                    [header XML Output File]
                    [table 
                        [tr [tc [b Name]][tc output]]
                        [tr [tc [b Alternative name]][tc o]]
                        [tr [tc [b Is positional parameter]][tc Yes (# 2)]]
                        [tr [tc [b Description]][tc The path of the XML file to be created. The path can be absolute or relative.]]
                        [tr [tc [b Type]][tc file_path or null]]
                        [tr [tc [b Required]][tc no]]
                        [tr [tc [b Default Value]][tc null]]
                        [tr [tc [b Example(s)]][tc output/index.xml]]
                    ]
                ]

            ]
        ]

        [ch ( id="command_PDML_to_standalone" ) [title Create Standalone PDML]
            [b Name: ][c PDML_to_standalone]

            [b Alternative name: ][c pdml2sa]

            [header Description]
            [p Convert a PDML document into a standalone PDML document.[nl]Note: This command is not suitable to convert PML documents into a standalone PDML document.]

            [header Examples]
            [input 
                ~~~
                pdml pdml2sa input/book.pml output/standalone_book.pml
                ~~~
            ]

            [header Input Parameters]
            [list 
                [el 
                    [header PDML Input File]
                    [table 
                        [tr [tc [b Name]][tc input]]
                        [tr [tc [b Alternative name]][tc i]]
                        [tr [tc [b Is positional parameter]][tc Yes (# 1)]]
                        [tr [tc [b Description]][tc The path of the PDML file to be converted to a standalone file. The path can be absolute or relative.]]
                        [tr [tc [b Type]][tc file_path or null]]
                        [tr [tc [b Required]][tc no]]
                        [tr [tc [b Default Value]][tc null]]
                        [tr [tc [b Example(s)]][tc input/book.pml]]
                    ]
                ]

                [el 
                    [header PDML Output File]
                    [table 
                        [tr [tc [b Name]][tc output]]
                        [tr [tc [b Alternative name]][tc o]]
                        [tr [tc [b Is positional parameter]][tc Yes (# 2)]]
                        [tr [tc [b Description]][tc The path of the standalone PDML file to be created. The path can be absolute or relative.]]
                        [tr [tc [b Type]][tc file_path or null]]
                        [tr [tc [b Required]][tc no]]
                        [tr [tc [b Default Value]][tc null]]
                        [tr [tc [b Example(s)]][tc output/standalone_book.pml]]
                    ]
                ]

            ]
        ]

        [ch ( id="command_export_tags" ) [title Export PML Nodes And Attributes Data to a JSON File]
            [b Name: ][c export_tags]

            [b Alternative name: ][c et]

            [header Description]
            [p This command creates a JSON file describing PML nodes and attributes.[nl]The JSON file can be used by editor plugins and tools to get structured data about PML nodes and attributes.]

            [header Examples]
            [input 
                ~~~
                pmlc export_tags
                ~~~
            ]

            [header Input Parameters]
            [list 
                [el 
                    [header JSON Output File Path]
                    [table 
                        [tr [tc [b Name]][tc output_file]]
                        [tr [tc [b Alternative name]][tc of]]
                        [tr [tc [b Is positional parameter]][tc No]]
                        [tr [tc [b Description]][tc The absolute or relative path of the JSON file to be created.[nl]If the path is relative, it is relative to the current working directory.[nl]The default value is file 'pml_tags.json' created in the current working directory.[nl]If the file exists already it will be overwritten.]]
                        [tr [tc [b Type]][tc file_path]]
                        [tr [tc [b Required]][tc no]]
                        [tr [tc [b Default Value]][tc pml_tags.json]]
                        [tr [tc [b Example(s)]][tc --output_file pml/tags.json]]
                    ]
                ]

            ]
        ]

        [ch ( id="command_create_nodes_reference_manual" ) [title Create Nodes Reference Manual]
            [b Name: ][c create_nodes_reference_manual]

            [b Alternative name: ][c cnrm]

            [header Description]
            [p This command creates the 'PML Nodes Reference Manual'.[nl]The auto-generated PML file is stored in sub-directory 'input' of the current working directory.[nl]The HTML output is stored in sub-directory 'output' of the current working directory.]

            [header Examples]
            [input 
                ~~~
                pmlc create_reference_manual
                ~~~
            ]

            [header Input Parameters]
            [p This command has no input parameters]
        ]

        [ch ( id="command_create_commands_reference_manual" ) [title Create Commands Reference Manual]
            [b Name: ][c create_commands_reference_manual]

            [b Alternative name: ][c ccrm]

            [header Description]
            [p This command creates the 'PML Commands Reference Manual'.[nl]The auto-generated PML file is stored in sub-directory 'input' of the current working directory.[nl]The output is stored in sub-directory 'output' of the current working directory.]

            [header Examples]
            [input 
                ~~~
                pmlc create_commands_manual
                ~~~
            ]

            [header Input Parameters]
            [p This command has no input parameters]
        ]

    ]

]
