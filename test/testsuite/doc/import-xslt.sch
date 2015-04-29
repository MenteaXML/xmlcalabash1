<?xml version="1.0" encoding="utf-8"?>
<s:schema xmlns:s="http://purl.oclc.org/dsdl/schematron"
          xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:include href="function.xsl"/>

   <s:ns uri="http://example.org/ns" prefix="ex"/>

   <s:pattern name="ex:true should be true">
      <s:rule context="doc">
         <s:assert test="ex:true()">'ex:true()' should evaluate to true().</s:assert>
      </s:rule>
   </s:pattern>
</s:schema>
