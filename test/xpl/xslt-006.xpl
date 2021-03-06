<p:declare-step xmlns:t="http://xproc.org/ns/testsuite" xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step" xmlns:err="http://www.w3.org/ns/xproc-error" version="1.0" name="pipeline">
<p:input port="parameters" kind="parameter"/>
<p:output port="result"/>

<p:xslt name="xslt" version="2.0" output-base-uri="http://www.example.com/">
  <p:input port="source">
    <p:document href="../doc/input.xml"/>
  </p:input>
  <p:input port="stylesheet">
    <p:inline>
      <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

        <xsl:output method="xml" encoding="utf-8" indent="no" omit-xml-declaration="yes"/>

        <xsl:template match="/">
          <xsl:result-document href="foo.xml">
            <doc>Hello world!</doc>
          </xsl:result-document>
          <ignored/>
        </xsl:template>

      </xsl:stylesheet>
    </p:inline>
  </p:input>
</p:xslt>

<p:sink/>

<p:add-xml-base>
  <p:input port="source">
    <p:pipe step="xslt" port="secondary"/>
  </p:input>
</p:add-xml-base>

</p:declare-step>