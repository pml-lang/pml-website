[ch [title Version 1.1.0 2021-01-14]

    [ch [title New Features]

        [ch [title New Nodes]

            [list
                [el
                    [c table_data]: Simple table data defined as plain CSV text, and rendered as a table.
                ]
                [el
                    [c table]: A table layout composed of rows and columns.

                    Besides just text, each cell in the table can have complex content, including nested tables. Conceptually similar to a HTML table.
                ]
                [el
                    [c monospace]: A paragraph in which whitespace is preserved, and a monospace font is used.
                ]
                [el
                    [c division]: A division or section in the document. Similar to a [c div] tag in HTML.
                ]
                [el
                    [c span]: An inline node typically used to render a HTML [c <span>...</span>] inline element with a specific set of HTML attributes.
                ]
            ]
        ]

        [ch [title New Attributes]

            [list
                [el
                    [c caption]: A small text displayed below the node. Available for the following tags: [c image, audio, video, youtube_video, and table]
                ]
            ]
        ]

        [ch [title New Command Line Arguments]

            Added command line arguments [c HTML_header] and [c HTML_footer] to the [i PML to HTML Converter]. Allows you to:
            [list
                [el Provide a custom HTML header/footer for each document, or generate only the HTML body code (no header/footer).]
                [el Customize the style of the resulting HTML by providing your specific CSS file(s), in addition to PML's default CSS file, or as a replacement.]
            ]
        ]
    ]
]
