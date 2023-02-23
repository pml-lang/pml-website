[ch [title Version 1.3.0 2021-03-09]

    [ch [title Backwards-Incompatible Changes]

        [list
            [el
                The tag's open/close symbols have changed from [c {}] to [c \[\]]

                Example:

                Old version: [c {i great}]

                New version: [c \[i great\]]

                If you want to keep [c {}] you can run the converter with the parameter [c --tag_start_stop_symbols "{}"].
            ]

            [el
                The open/close symbols for embedding variables have changed from [c \[\[\]\]] to [c <<>>]

                Example:

                Old version: [c \[\[name\]\]]

                New version: [c <<name>>]
            ]
        ]
    ]

    [ch [title New Features]

        [list
            [el
                A new CSS file, named [c pml-print-default.css], has been added.

                This file has specific styles defined for documents printed in a browser.
                These styles are also applied when a document is sent to a PDF writer, such as 'Microsoft Print to PDF' in Windows.
                You can use CSS's full printing support to adapt printed document to your specific needs, such as printing two columns on a page.
            ]

            [el
                Attribute [c TOC_title] has been added to node [c document]

                It defines the title displayed for the table of contents.

                The default value is "Table of Contents".
            ]

            [el
                Argument [c tag_start_stop_symbols] has been added.

                It allows you to define which symbols you want to use to start/stop tags.
                Currently supported values are [c {}] and [c \[\]]
            ]
        ]
    ]

    [ch [title Improvements]

        [list
            [el
                The Javascript code for expanding/collapsing the table of contents has been removed.

                The HTML [c <details>] tag is used instead.
            ]

            [el
                The Javascript code for sliding the separator between the table of contents and the text has been removed.
            ]
        ]
    ]
]
