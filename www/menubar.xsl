<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet
	version='1.0'
	xmlns:xsl='http://www.w3.org/1999/XSL/Transform'
	xmlns='http://www.w3.org/1999/xhtml'
>
<xsl:output method='xml' version='1.0' encoding='UTF-8' indent='yes'/>
<xsl:template name='menubar'>
	<div>
		<a href='/home.xml'>Home</a>
		|
		<a href='/bin/logout'>Log out</a>
	</div>
</xsl:template>
</xsl:stylesheet>