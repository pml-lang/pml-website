[ch [title Version 2.3.0 2022-02-11]

    [ch [title New Features]
        [list
            [el
                [i Script Nodes] have been added.
                Script nodes enable you to embed source code in a PML document, and execute it when the document is parsed.
                For more information please refer to [link url=https://www.pml-lang.dev/docs/advanced_features/index.html#script_nodes text="Script Nodes"].
            ]

            [el
                Node [c table_data]: Besides using a comma or tab as cell separator, a vertical bar ([c |]) or a semicolon ([c ;]) can now also be used.
            ]
        ]
    ]

    [ch (id=v_2_3_0_deprecated) [title Deprecated Features]
        [list
            [el
                The syntax for nodes whose name is prefixed with [c !] has changed, as shown in the following table:
                [table
                    [theader [tc [b Old Syntax]][tc [b New Syntax]]]
                    [tr [tc [c \[!ins-file ...\]]][tc [c \[u:ins_file ...\]]]]
                    [tr [tc [c \[!get ...\]]][tc [c \[u:get ...\]]]]
                    [tr [tc [c \[!set ...\]]][tc [c \[u:set ...\]]]]
                ]

                The old syntax will no more be supported in a future version.
            ]

            [el
                The method to define user-defined-nodes will probably change in the future, as explained [link url=https://www.pml-lang.dev/docs/advanced_features/index.html#UDN_how text=here].
            ]
        ]
    ]
]
