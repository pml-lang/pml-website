[ch (id=script_nodes) [title Script Nodes (Experimental)]

    [i 'Script Nodes'] is arguably the most powerful PML feature.
    They allow you to embed Javascript source code in a PML document.
    The code is executed when the PML document is parsed.

    [i Script Nodes] can help to considerably simplify and automate the writing process, especially in case of big, complex, or frequently changing documents.

    Here are just a few examples of what you can do:
    [list
        [el
            Automatically update text or data snippets in a document.

            Example: Update the [i last updated] date field each time a document is re-generated.
        ]

        [el
            Retrieve text and data from external resources like files, URLs, databases, etc.

            Example: Retrieve a version number stored in a JSON file, and insert it in the document.
        ]

        [el
            Generate text and data programmatically.

            Example: Insert compound interest tables that are generated by an embedded Javascript function.
        ]

        [el
            Use a calculator to compute values to be inserted in the document.

            Example: Calculate, round, and format product prices to be inserted in the document, using an arithmetic expression.
        ]

        [el
            Conditionally include/exclude parts of the document, depending on the target audience.

            Example: An exam paper printed for students contains only questions, while the teachers' edition also contains the answers.
        ]

        [el
            Dynamically generate and insert graphical components like diagrams into a PML document.

            Example: Insert [link url=https://plantuml.com/ text=PlantUML] source code into a document, and render it as a MindMap diagram in the target document.
        ]

        [el
            Ask the user for input on the console or in a GUI dialog.

            Example: Ask the user if all graphic files should be re-generated.
        ]

        [el
            Execute external programs and OS scripts to generate PML code on-the-fly, or to do whatever else can be done on the machine.

            Example: Execute an external program (written in [i any] programming language) to retrieve some real-time data from an Excel sheet, a database, or from the cloud, and then generate the PML markup code for some tables to be inserted in the PML document. Moreover, send an email to inform managers about the update. And add an entry in a log file located on the company's headquarter server.
        ]
    ]

    [i Script Nodes] is a feature of the [link url=https://pdml-lang.dev/ text="Practical Data and Markup Language (PDML)"].
    But since PML uses PDML under the hood, [i Script Nodes], as well as all other PDML features, are supported in PML too.
    All documentation related to [i Script Nodes] is available on PDML's website.
    Please refer to the following links for more information:
    [list
        [el Chapter [link url=[!get pdml_extensions_online_docs]user_manual/index.html#script_nodes text="Script Nodes"] in the [link url=[!get pdml_extensions_online_docs]user_manual/index.html text="PDML Extensions User Manual"]]

        [el Chapter [link url=[!get pdml_extensions_online_docs]reference_manual/index.html#scripting_api text="Scripting API"] in the [link url=[!get pdml_extensions_online_docs]reference_manual/index.html text="PDML Extensions Reference Manual"]]

        [el [link url=[!get pdml_extensions_online_docs]scripting_examples/index.html text="PDML Scripting Examples"]]
    ]
]