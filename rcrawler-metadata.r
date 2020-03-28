# full tutorial
# https://www.gokam.co.uk/seo-crawling-metadata-extraction-with-r-rcrawler/


#what we want to extract
CustomLabels <- c("title",
                 "h1",
                 "canonical tag",
                 "meta robots",
                 "hreflang",
                 "body class")
 
# How to grab it
 CustomXPaths <- c("///title",
           "///h1",
           "//link[@rel='canonical']/@href",
           "//meta[@rel='robots']/@content",
           "//link[@rel='alternate']/@hreflang",
           "//body/@class")
 
 Rcrawler(Website = "https://www.brightonseo.com/",
       ExtractXpathPat = CustomXPaths, PatternsNames = CustomLabels)



