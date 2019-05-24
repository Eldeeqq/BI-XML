<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/project">
        <html>

            <head>
                <!-- Standard Meta -->
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
                <meta name="viewport" content="width=Metadevice-width, initial-scale=1.0, maximum-scale=1.0"></meta>

                <!-- Site Properties -->
                <title>Semestral work | BI-XML</title>
                <link rel="stylesheet" type="text/css" href="../stylesheet/semantic.min.css"></link>
                <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
                <script src="../stylesheet/semantic.min.js"></script>

                <link rel="stylesheet" type="text/css" href="../stylesheet/components/reset.css"> </link>
                <link rel="stylesheet" type="text/css" href="../stylesheet/components/site.css"></link>

                <link rel="stylesheet" type="text/css" href="../stylesheet/components/container.css"></link>
                <link rel="stylesheet" type="text/css" href="../stylesheet/components/grid.css"></link>
                <link rel="stylesheet" type="text/css" href="../stylesheet/components/header.css"></link>
                <link rel="stylesheet" type="text/css" href="../stylesheet/components/image.css"></link>
                <link rel="stylesheet" type="text/css" href="../stylesheet/components/menu.css"></link>

                <link rel="stylesheet" type="text/css" href="../stylesheet/components/divider.css"></link>
                <link rel="stylesheet" type="text/css" href="../stylesheet/components/list.css"></link>
                <link rel="stylesheet" type="text/css" href="../stylesheet/components/segment.css"></link>
                <link rel="stylesheet" type="text/css" href="../stylesheet/components/dropdown.css"></link>
                <link rel="stylesheet" type="text/css" href="../stylesheet/components/icon.css"></link>

                <style type="text/css">
                    body {
                    background-color: #FFFFFF;
                    }
                    
                    .ui.menu .item img.logo {
                    margin-right: 1.5em;
                    }
                    
                    .main.container {
                    margin-top: 7em;
                    }
                    
                    .wireframe {
                    margin-top: 2em;
                    }
                    
                    .ui.footer.segment {
                    margin: 5em 0em 0em;
                    padding: 5em 0em;
                    }
                </style>

            </head>

            <body>

                <div class="ui fixed inverted menu">
                    <div class="ui container">
                        <a href="./index.html" class="header item">
                            Semestral work | BI-XML
                        </a>
                        <div class="ui simple dropdown item">
                            Countries <i class="dropdown icon"></i>
                            <div class="menu">

                                <xsl:for-each select="country">

                                    <a class="item" href="{@id}.html">
                                        <xsl:value-of select="introduction/name"></xsl:value-of>
                                    </a>

                                </xsl:for-each>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="ui main text container">
                    <h1 class="ui header">Task (in czech)</h1>

                    <div class="ui segments black">

                        <div class="ui segment black">Vytvořte XML dokument pro každou zadanou oblast z <a href="https://www.cia.gov/library/publications/the-world-factbook/">CIA - World factbook</a>.
                        <br/>Dále spojte XML dokumenty pro jednotlivé oblasti do jediného dokumentu pomocí DTD.</div>
                        <div class="ui segment black">Vytvořte schema pomocí DTD i RelaxNG pro validaci struktury XML dokumentů. V RelaxNG schema se pokuste využít alespoň některé možnosti pokročilejší validace co jazyk nabízí navíc oproti DTD.
                        </div>
                        <div class="ui segment black">Pomocí XSLT vygenerujte (X)HTML výstupy (tj. souhrný index obsahující odkazy na jednotlivé oblasti a samostatnou stránku pro každou oblast obsahující detailní informace).
                        </div>
                        <div class="ui segment black">Pomocí XSL-FO vygenerujte PDF výstup (tj. dokument obsahující odkazy na jednotlivé oblasti a detailní informace o každé oblasti).</div>
                        <div class="ui segment black">Buď vygenerujte ePub výstup (tj. ebook připravený k načtení v software podporujícím ePub formát), nebo do (X)HTML a PDF výstupů přidejte obrázky (stačí vlajky nebo mapy a podobně), navigaci pro sekce s detailními informacemi (stačí pro hlavní sekce jako "Introduction", "Geography", atd.) a rozšiřte základní formátování aby byly výstupy více přehledné (použijte CSS a možnosti formátování v XSL-FO včetně číslování stran a přidání záhlaví či zápatí).</div>
                        <div class="ui segment black">Schema (DTD i RelaxNG), stylesheety (XSLT i XSL-FO) a další části projektu tvořte adekvátně obecné aby byla zajištěna funkčnost pro všechny zadané oblasti. Všechny XML dokumenty musí být well-formed a valid. I základní výstupy bez rozšířeného formátování musí být adekvátně čitelné (tj. alespoň by mělo jít rozlišit nadpisy a odstavce, případně i další prvky jako seznamy, odkazy, atd.).</div>
                        <div class="ui segment black">Soubory projektu (bez použitého software) zabalte do ZIP nebo TAR archivu a pošlete na email vyučujícího. Do archivu také přidejte seznam použitých příkazů (nebo skript s čitelným zdrojovým kódem co tyto příkazy automaticky provede) a krátký popis projektu (adresářová struktura, potřebný software, atd.).
                        </div>

                    </div>

                    <br/>

                    <div class="ui list segments">
                     <div class="ui segment">
                        <h2 class="ui header medium">Selected countries</h2>
                    </div>
                    <div class="ui segment ">

                        <h3 class="ui header">
                            <i class="large uz flag">
                            </i>
                            <div class="content">
                              <a href="./uzbekistan.html">
                                <div class="content">
                                    Uzbekistan
                                </div>
                            </a>
                        </div>
                    </h3>

                    
                </div>
                <div class="ui segment ">
                    <h3 class="ui header">
                        <i class="large so flag"></i>
                        <div class="content">
                            <a href="./somalia.html"> 
                                <div class="content">
                                   Somalia
                               </div>
                           </a>
                       </div>
                   </h3>
               </div>

               
               <div class="ui segment ">

                <h3 class="ui header">
                  <i class="large za flag"></i>
                  <div class="content">
                     <a href="./south_africa.html">
                        <div class="content">
                         South Africa
                     </div>
                 </a>
             </div>
         </h3>
     </div>
     

     <div class="ui segment ">

        <h3 class="ui header">
            <i class="large kp flag"></i>
            <div class="content">
               <a href="./north_korea.html"> 
                <div class="content">
                 North Korea
             </div>
         </a>
     </div>
 </h3>
</div>

</div>
</div>

<br/>
<br/>
<div class="ui inverted vertical footer segment">
    <div class="ui center aligned container">
        <div class="ui stackable inverted divided grid">
            <div class="three wide column">

                <div class="seven wide column">
                    <h4 class="ui inverted header">Semestral work | BI-XML</h4>
                </div>
            </div>
            <div class="ui horizontal inverted small divided link list">
                <a class="item" href="">Jan Peřina</a>
            </div>
        </div>
    </div>
</div>
</body>

</html>

</xsl:template>
</xsl:stylesheet>