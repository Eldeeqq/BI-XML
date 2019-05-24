<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format">
  <xsl:output method="xml" indent="yes"/>
  <xsl:template match="/">
    <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
      <fo:layout-master-set>
        <fo:simple-page-master page-height="297mm" page-width="210mm" 
          margin="5mm 25mm 5mm 25mm" master-name="PageMaster">
          <fo:region-body   margin="20mm 0mm 20mm 0mm"/>
        </fo:simple-page-master>
      </fo:layout-master-set>
      <fo:page-sequence master-reference="PageMaster">
        <fo:flow flow-name="xsl-region-body" >
          <fo:block font-family="serif">
            <fo:block text-align="center"  font-size="28pt"
              font-family="monospace"> 
              CIA - world factbook</fo:block>     
              <fo:block text-align="center"  font-size="12pt"
                font-family="monospace">
                BI-XML - semestral work
              </fo:block>
              <xsl:apply-templates select="project"/>
            </fo:block>
          </fo:flow>
        </fo:page-sequence>
      </fo:root>
    </xsl:template>

    <xsl:template match="project">
      <fo:block text-align="left"  margin-top="1.5cm">Countries:</fo:block>
      <fo:list-block >
       <xsl:for-each select="country">
        <fo:list-item > 
         <fo:list-item-label>
          <fo:block></fo:block>
        </fo:list-item-label>
        <fo:list-item-body>
          <fo:block>
            <fo:basic-link internal-destination="{@id}" color="blue" text-decoration="underline">
              <xsl:value-of select="introduction/name"/>
            </fo:basic-link>
          </fo:block>
        </fo:list-item-body>
      </fo:list-item>
    </xsl:for-each>
  </fo:list-block>
  <xsl:apply-templates select="country"/>
</xsl:template>


<xsl:template match="country">
  <fo:block margin-top="1cm" >
    <xsl:attribute name="id">
     <xsl:value-of select="@id"/>
   </xsl:attribute>
   <fo:block text-align="left" >
    <xsl:apply-templates select="name" />
  </fo:block>

  <xsl:apply-templates select="introduction"/>
  <xsl:apply-templates select="pictures"/>
  <xsl:apply-templates select="section"/>


</fo:block>
</xsl:template>

<xsl:template match="introduction">

 <fo:block text-align="left"   font-size="20pt"
  font-family="sans-serif" font-weight="bold">
  <xsl:value-of select="name"/>
</fo:block>
<fo:block>
  <xsl:apply-templates select='background'/>
</fo:block>

<xsl:apply-templates select="section"/>
</xsl:template>

<xsl:template match="paragraph">
  <fo:block>
    <xsl:value-of select="."/>
  </fo:block>
</xsl:template>

<xsl:template match="background">
  <xsl:for-each select="paragraph">
    <fo:block margin-bottom="8pt" text-indent="15pt">
      <xsl:value-of select="."/>
    </fo:block>
  </xsl:for-each>
</xsl:template>

<xsl:template match="pictures">
  <fo:block text-align="center" margin-top="2cm" >
    <xsl:apply-templates select="picture"/>
  </fo:block>
  <xsl:apply-templates select="photos"/>
</xsl:template>

<xsl:template match="picture">
  <fo:block>
    <fo:external-graphic width="30%"
     content-width="scale-to-fit"
     scaling="uniform">
     <xsl:attribute name="src">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </fo:external-graphic>
</fo:block>
<fo:block>
  <xsl:value-of select="@description"/>
</fo:block>
</xsl:template>

<xsl:template match="photos">
  <xsl:apply-templates select="photo"/>
</xsl:template>

<xsl:template match="photo">
  <fo:block text-align="center"  font-size="10pt">
    <fo:block margin-top="1cm">
      <xsl:value-of select="@description"/>

    </fo:block>
    <fo:external-graphic width="30%"
     content-width="scale-to-fit"
     scaling="uniform" margin-top="0.25cm">
     <xsl:attribute name="src">
      <xsl:value-of select="."/>
    </xsl:attribute>
  </fo:external-graphic>

</fo:block>

</xsl:template>

<xsl:template match="section">
  <fo:block text-align="left" font-size="18" font-weight="700" margin-top="1cm">
    <xsl:value-of select="@name"/>
  </fo:block>
  <fo:block>
    <xsl:apply-templates select="detail"/>
    <xsl:apply-templates select="nested-detail"/>
    <xsl:apply-templates select="list-detail"/>
    <xsl:apply-templates select="histogram"/>

  </fo:block>
</xsl:template>

<xsl:template match="detail" >
  <fo:block text-align="left" margin-bottom="0.25cm" >
    <fo:block font-weight="700">
      <xsl:value-of select="@name"/>
    </fo:block>
    <fo:block >
      <xsl:value-of select="."/>
    </fo:block>
  </fo:block>
</xsl:template>

<xsl:template match="nested-detail">
  <fo:block text-align="left" >
    <fo:block font-weight="700">
      <xsl:value-of select="@name"/>
    </fo:block>
    <fo:block>
      <xsl:apply-templates select="detail"/>
    </fo:block>
  </fo:block> 
</xsl:template>

<xsl:template match="list-detail">
  <fo:block text-align="left" >
    <fo:block font-weight="700">
      <xsl:value-of select="@name"/>
    </fo:block>
    <fo:block>
      <fo:list-block>
        <xsl:apply-templates select="list-item"/>

      </fo:list-block>
    </fo:block>
  </fo:block>
</xsl:template>

<xsl:template match="list-item">
 <fo:list-item margin-top="0.5cm">
  <fo:list-item-label >
    <fo:block>

    </fo:block>
  </fo:list-item-label>
  <fo:list-item-body >
    <fo:block>
      <xsl:value-of select="."/>
    </fo:block>
  </fo:list-item-body>
</fo:list-item>
</xsl:template>

<xsl:template match="histogram">
  <fo:block margin-top="0.5cm">
    <fo:block font-weight="700">
      <xsl:value-of select="@name"/>
    </fo:block>
    <xsl:if test="(@description)">
     <fo:block font-weight="400" font-size="8pt">
      (<xsl:value-of select="@description"/>)
    </fo:block>

    </xsl:if>
    <fo:table table-layout="fixed" width="100%">
      <fo:table-body>
        <xsl:apply-templates select="entry"/>
      </fo:table-body>
    </fo:table>
  </fo:block>
  
</xsl:template>

<xsl:template match="entry">
  <fo:table-row>
    <fo:table-cell column-number="1">
      <fo:block>
        <xsl:choose>
          <xsl:when test="not(@from-age) and not(@to-age)">
            <fo:inline font-weight="400">Overall</fo:inline>:
          </xsl:when>
          <xsl:when test="(@from-age = '0') and (@to-age = '0')">
            <fo:inline font-weight="400">At birth</fo:inline>:
          </xsl:when>
          <xsl:when test="not(@to-age)">
            <fo:inline font-weight="400">
              Over
              <xsl:value-of select="@from-age"/>
            </fo:inline>
            :
          </xsl:when>
          <xsl:otherwise>
            <fo:inline font-weight="400">
              From age
              <xsl:value-of select="@from-age"/>
              to age
              <xsl:value-of select="@to-age"/>
            </fo:inline>
            :
          </xsl:otherwise>
        </xsl:choose>
      </fo:block>
    </fo:table-cell>

    <fo:table-cell column-number="2">
      <fo:block>
        <xsl:value-of select="."/>
        <xsl:value-of select="../@unit"/>
      </fo:block>
    </fo:table-cell>

  </fo:table-row>
</xsl:template>


</xsl:stylesheet>
