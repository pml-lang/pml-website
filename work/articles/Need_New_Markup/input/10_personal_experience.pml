{ch title=My Own Experience

    When I started writing technical documents a few years ago, I used Docbook. It took me some time to learn it, but after that I never stumbled on anything I couldn't do. Docbook is powerful. However, I disliked typing verbose XML code. I tried some XML editors, but gave up. Finally I just wrote complete text blocks unformatted in Notepad++, and then adorned the text with the necessary markup code. It was frustrating and time-consuming. Moreover, I couldn't find a stylesheet that produced good-looking web documents, and I didn't have the patience, motivation, and experience to fiddle around with big, complex CSS files and adapt them.

    Later on I discovered Asciidoctor. What a relief. Everything was so much simpler and the web documents were beautiful, out of the box. Asciidoctor's documentation is great, and I think the community is helpful and active. However, when I started to write more complex and bigger documents, I had to deal with problems similar to those described in the previous chapters. At one point, I had to develop a specific pre- and post-processor to solve a problem for which I couldn't find a solution in Asciidoctor/Gitbook.
    
    An intriguing question emerged: "Why do these problems not exist in Docbook?".
    
    To make a long story short, I concluded that we need a new markup syntax. The key points to success would be:
    {list
        {el
            easy to learn: few, simple, consistent and predictable rules (no exceptions)
        }
        {el
            easy to write and read
        }
        {el
            well-structured documents with no ambiguities
        }
        {el
            powerful enough to create big, complex documents without the need for "special rules, tricks, or workarounds"
        }
    }
    After a period of investigating, pondering, programming, testing and improving, the {link url=https://www.pml-lang.dev text=Practical Markup Language (PML)} was born. Since then, I never looked back again. Today I write all my web documents in PML (including this article). Of course, when I started to create PML, it was to cover my own needs. So, I am probably biased. Hopefully this article contains enough factual examples, but I encourage you to leave a comment if you see anything wrong, unfair, or missing. I appreciate constructive feedback of any kind, and I will update the article if needed.
}
