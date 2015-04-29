<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0"
    xmlns:ex="http://example.org/ns"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="ex xs">

<xsl:function name="ex:true" as="xs:boolean">
  <xsl:sequence select="true()" />
</xsl:function>

</xsl:stylesheet>
