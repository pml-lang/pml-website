{ch title=Advantages id=advantages

    {ch title=Ubiquitous Advantages

        All document markup languages work like this:

        {list
            {el A markup document consists of {i plain text.}}
            {el
                Content and presentation are defined in {i separate} files.

                The {i content} file contains the text and markup instructions. The {i presentation} file contains the stylesheet (e.g. a CSS file).
            }
        }

        It turns out that these two simple concepts lead to an astonishing set of practical advantages, explained in the following chapters.

        {ch title=Distraction-Free Writing

            When you write, you focus on content, not on presentation. You focus on what you want to say, instead of how it should be displayed or printed.

            Moreover, you can customize your writing environment (editor) without worrying about the end result. For example, you can use a different font and a different number of characters displayed per line, without thinking about how this will affect the final document.

            Thus, when you write, it's easier to {i be in the flow (in the zone)}, which Wikipedia {link url=https://en.wikipedia.org/wiki/Flow_(psychology) text=describes} as 
            
            {quote source=Flow, Wikipedia
                a mental state of operation in which a person performing an activity is fully immersed in a feeling of energized focus, full involvement, and enjoyment in the process of the activity.
            }

            This is a big deal!
        }

        {ch title=Choice of Editor

            You can use {i your} preferred {link url=https://en.wikipedia.org/wiki/List_of_text_editors text=text editor} or Integrated Development Environment (IDE) to write your document. You are not tied to a specific editor. There is no vendor lock-in.
            
            Imagine a team of writers collaborating on the same document. Everybody just uses the text editor he/she likes the most for the task at hand. For example, Bob and Alice are working on a new user manual, but Bob uses Emacs on Linux, while Alice uses Notepad++ on Windows.

            Some high-end text editors provide incredibly powerful features (some out-of-the-box, some via extensions) and are highly customizable, so that you can setup your ideal writing software. As a result, you have a more enjoyable writing experience and you are more productive than with a WYSIWYG editor.
        }

        {ch title=Choice of Presentation

            Because content and presentation are defined in separate files, you can change presentation by simply choosing another stylesheet (e.g. CSS file) from a predefined set, and adapt it if needed. If your document is read on different reading/printing devices, you can use different presentations for each device.

            Sometimes the same stylesheet is used for many documents. Thus, presentation remains consistent over large sets of documents. Moreover, global presentation changes can often be done in a matter of seconds, because only one file needs to be changed. 
        }

        {ch title=Choice of Transformation

            Depending on the language and tools you use, you can transform your markup code into final documents of different formats, such as HTML, PDF, ePub etc.
                    
            And if your tool can't do it, there is {link url=http://pandoc.org/ text=Pandoc}, the Swiss-army-knife for document conversions. At the time of writing, Pandoc can convert not less than 31 input formats into not less than 49 output formats. That's 31 x 49 = 1,519 transformations supported by one tool.
        }

        {ch title=Choice of Text Tools

            There are many tools and online services available to handle plain text files - some possibly pre-installed on your PC. You can use them to handle your markup documents, in whatever way you want.

            Examples:
            {list
                {el You can use a version control service such as Github, Gitlab, or Bitbucket to track changes and issues, collaborate on documents, synchronize documents on different devices, and use all other powerful features.}
                
                {el To get an idea of free tools for technical people, look at this {link url=https://en.wikibooks.org/wiki/Guide_to_Unix/Commands/Text_Processing text=List of Unix Text Processing Tools}. Nowadays, you can also easily install these Linux tools on Windows.}
            }
        }

        {ch title=Customized Tools

            Reading and writing plain text files is very well supported in most programming languages. Therefore it is easier for programmers to develop customized tools to explore and manipulate documents.
            
            For instance, pre-processors and post-processors can be created to add features and automate recurring tasks. A concrete example would be a tool that displays a sorted list of website links used in your document and checks for any broken links.

            Moreover, it is easy to {i programmatically create} documents. For instance, a product catalog or a reference manual could be created automatically based on structured data stored in a database.
        }

        {ch title=Portability

            As content and presentation is defined in plain text files, documents are portable among different operating systems (Windows, Unix/Linux, macOS, etc.). All operating systems have very good support for text files.
        }
    }

    {ch title=Language-Dependent Advantages

        In this chapter we'll look at additional advantages found in {i some} document markup languages.

        {ch title=File Splitting

            Some markup languages allow you to split a document into different files.
            
            For example, each chapter of a book (and maybe also each sub-chapter) can be stored in a different file and in a directory hierarchy of your choice.
            
            This can be a game-changer when a team collaborates on mid-size or big documents, because it makes editing, reorganizing, and collaborating much more convenient.
        }

        {ch title=Semantic Markup
            
            Some document markup languages support only {i presentation} tags. The better breed of them prefer {i semantic} tags over {i presentation} tags. This means that, when you use markup, you specify the {i meaning} of a piece of text. You do not specify {i how} the text will be displayed or printed. You define the {i What}, not the {i How}.

            A first benefit is that this leads to much more flexibility in the rendering process.
            
            Suppose your text contains several warning messages that need to stand out. If you use a markup language that supports only {i presentation} tags, you could decide to aggressively display a centered text in red on yellow, like this:

            {p html_style=color:red; background:yellow; padding:0.5em; border:1px dotted lightgrey; font-weight:bold; text-align:center;
                Do not forget to unplug your coffee machine before opening it.
            }
            
            This works well if the warnings are displayed on a color screen. But if the document is printed on a color-less printer, or displayed on a black-and-white e-ink device, the result is a mess.

            On the other hand, in a markup language that provides {i semantic} tags, you would simply adorn your warnings with a {c warning} tag. The stylesheet used in the conversion process specifies {i how} all warnings are displayed. Hence, you can globally change the presentation of all warnings for a given output device by simply changing {i one} entry in the corresponding stylesheet. For example, in the stylesheet used for e-ink devices, you could specify to display the warnings in {i {b italics with a bigger font}}. Moreover, if you have other messages that have to stand out, like errors or tips, you can use different, specific tags and handle them separately, without any interference.

            A second advantage is that semantic markup opens the door for searchable documentation databases. You can query your markup code and extract useful information. For example, you could create a tool to count the number of warnings contained in the document or extract and save the warnings in a separate file for further exploration.
        }

        {ch title=Parameters
            
            Advanced markup languages support {i parameters} embedded in the markup code. You first define a parameter by assigning a value to a name (e.g. {c my_email=foo@example.com}). Then, later in the document, you use the parameter name, instead of the value. If the value changes later, you just need to change it in one place, which is easy, fast, and less error-prone.

            This is an application of the important {link url=https://en.wikipedia.org/wiki/Don%27t_repeat_yourself text=Don't Repeat Yourself (DRY)} principle. It improves maintainability, productivity, and reliability. It is useful for all kinds of recurring text and markup attribute values, especially if they are subject to change. For example: your email address, the price of your product, the name of your dog, or whatever.
        }

        {ch title=Advanced Features

            Here is a brief summary of additional powerful options:

            {list
                {el title=Real-time preview

                    Sometimes it is convenient to see a preview of the final document (e.g. a HTML page) {i while} typing the markup code. As soon as you edit the markup code, you can immediately see the effect, without the need to re-launch the markup processor. Some editors support this kind of immediate feedback out-of-the-box or by plugins. For example, you type the document in one window, and you see the real-time preview in an adjacent window.

                    {- TODO show example -}
                    
                    You can think of this as a markup editor with WYSIWYG support.
                }

                {el title=Public API

                    A public {i Application Program Interface (API)} allows programmers to programmatically execute, change, or extend the markup processor's operations.

                    At the bare minimum, an API enables other applications to convert documents. For example, a web server could read markup code stored in a file or entered by the user and convert it to HTML on-the-fly, by using the API. This could be used, for instance, to provide an online markup tester, so that people can try out snippets of markup code, without the need to install anything on their PC.

                    More advanced APIs can provide additional functionality, such as:
                    {list
                        {el Change the rendering of some tags}
                        {el Add more tags to the language}
                        {el Add more output formats to the converter}
                        {el Create a markup document programmatically, by retrieving data from different sources.}
                        {el Hooks (also called extension points)

                            Hooks allow programmers to execute functions when specific events occur.

                            For example, once the {i Abstract Syntax Tree (AST)} (i.e. tree structure) of the document has been created by the markup processor, an extension point can programmatically explore the AST to extract and report useful information, or even change it to implement the most extravagant requirements.
                        }
                    }
                }
                
                {el title=Templates

                    Templates allow you to customize or redefine the rendering of specific tags, by modifying text files containing the template code.
                }
                
                {el title=User-defined tags
                    
                    You can use configuration files to extend the language and add your own tags to the markup language, and specify how each tag is rendered.
                    {- extensions in RST: https://latte.ee.usyd.edu.au/Tools/authoring.html -}
                }

                {el title=Processor Directives

                    Processor Directives are special instructions inserted in the markup code and interpreted by the markup processor.

                    Suppose somebody writes a test sheet for students. The sheet contains instructions that should only be visible for teachers. In that case, a directive could be used to display specific text blocks only if the document is printed for teachers.

                    {-
                    https://asciidoctor.org/docs/user-manual/#conditional-preprocessor-directives
                    -}
                }
            }
        }
    }
}    
