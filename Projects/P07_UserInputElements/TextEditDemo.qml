import QtQuick 2.12

Item {
    Column{
        TextEdit{
            text: "<b><i>Hello Everyone,</i></b"
            textFormat: TextEdit.RichText
        }

        Flickable{
            width: wikimediaTxtEditId.width
            contentHeight: wikimediaTxtEditId.implicitHeight
            height: 130
            clip: true
            anchors.centerIn: txtEditRectId

            TextEdit{
                id:wikimediaTxtEditId
                textFormat: TextEdit.RichText
                width: 300


                text: "<b>Hello all,</b>
                        Wikimediawww.wikimedia.org
                        Wikimedia is a global movement whose mission is to bring free educational content to the world.
                        Results from wikimedia.org
                        Wikimedia Commons
                        Category:Images - Category:Videos - Category:Photographs
                        Wikimedia Incubator
                        Although test wikis in the Wikimedia Incubator do not get ...
                        Meta-Wiki
                        Meta:About - Research:Index - Translation requests - ...
                        Wikimedia movement
                        The Wikimedia movement is the totality of people, activities, ...
                        People also ask
                        Who owns the Wikimedia Foundation?

                        Is Wikimedia copyright free?

                        How much does Wikipedia make a year?

                        Is Wikimedia Commons safe?

                        Feedback

                        Wikimedia Foundation (@Wikimedia) · Twitter
                        https://twitter.com/Wikimedia
                        We are fully committed to doing everything we can to ensure only accurate, unbiased information is shared on @Wikipedia. It's a responsibility we and our volunteer community honor every day, and #Election2020 in the U.S. is no exception. www.cnet.com/news/wikip…
                        Twitter · 11 hours ago
                        There are 70+ articles related to the upcoming U.S. presidential election on Wikipedia. About 2,600 volunteers are monitoring those pages, receiving alerts whenever edits are made. Here's more from @Reuters on how Wikipedia is preparing for #Election2020. www.reuters.com/article…
                        Twitter · 3 days ago
                        Starting now ➡️ Join a #RedditAMA with our Chief of Staff @ryanmerkley + other Disinformation Defense League members to learn everything you've wanted to know about disinformation and the U.S. #Election2020. Ask a question: www.reddit.com/jkx9qe @mediajustice #DisruptDisinfo
                        Twitter · 4 days ago
                        NEW: Several efforts are underway to help combat the spread of malicious edits and disinformation on @Wikipedia in and around the U.S. presidential election. Wikimedia Chief of Staff @ryanmerkley+ Senior Research Scientist @e__migrante share details ⏬ medium.com/freely-shari…
                        Twitter · 4 days ago
                        Wikipedia insists...that contemporary politics can and should still be distilled down to reason and shared facts, including who won a free and fair election. To make sure of that, safeguards are being put in place now on @Wikipedia. More in @WIRED ↓ www.wired.com/story/wik…
                        Twitter · 4 days ago
                        View on Twitter

                        Wikimedia Foundation - Wikipediaen.wikipedia.org › wiki › Wikimedia_Foundation
                        The Wikimedia Foundation, Inc. (WMF, or simply Wikimedia) is an American non-profit and charitable organization headquartered in San Francisco, California.
                        Employees: 400+ staff/contractors (as of July 14, ...
                        Revenue: US$104.5 million (2018); 91.2 million ...
                        Expenses: : US$81.4 million (2018); 69.1 million ...
                        Founder: Jimmy Wales
                        Images for wikimedia
                        wikispecieswikimedia polskadiffwikipediawikimedia chapterswikimedia commonswikimedia foundationlogowikiwikimedia orgwikimedia indonesiasvg

                        Wikimedia Foundationwikimediafoundation.org
                        The Wikimedia Foundation, Inc is a nonprofit charitable organization dedicated to encouraging the growth, development and distribution of free, multilingual ...

                        Wikimedia Foundation · GitHubgithub.com › wikimedia
                        Wikimedia is a global movement whose mission is to bring free educational content to the world. - Wikimedia Foundation.

                        How to contribute - MediaWikiwww.mediawiki.org › wiki › How_to_contribute
                        Oct 17, 2020 — Wikimedia projects use a variety of languages such as PHP and JavaScript in MediaWiki and its extensions, Lua (in Templates), CSS/LESS (in ...

                        Wikimedia Foundation - Home | Facebookwww.facebook.com › Pages › Interest
                        Wikimedia Foundation. 7439 likes · 124 talking about this. The Wikimedia Foundation is a nonprofit charitable organization dedicated to encouraging the...
                        Winning work: Wikipedia"
                wrapMode: TextEdit.Wrap
            }


        }



    }

}
