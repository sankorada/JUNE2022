<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/STU_INFO_DBPOLLING" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/STU_GRADE_INSERT" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/JUNE2022SOAApplication/CalculateStuGrade/STU_INFO_DBPOLLING"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/JUNE2022SOAApplication/CalculateStuGrade/STU_GRADE_INSERT">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/STU_INFO_DBPOLLING.wsdl"/>
            <oracle-xsl-mapper:rootElement name="StuInfoCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/STU_INFO_DBPOLLING"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/STU_GRADE_INSERT.wsdl"/>
            <oracle-xsl-mapper:rootElement name="StuResultCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/STU_GRADE_INSERT"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.4.0(XSLT Build 190828.0353.3300) AT [MON AUG 22 07:42:52 IST 2022].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <tns:StuResultCollection>
         <xsl:for-each select="/ns0:StuInfoCollection/ns0:StuInfo">
            <xsl:variable name="TOTAL_MARKS" select="ns0:eng + ns0:hindi + ns0:maths"/>
            <tns:StuResult>
               <tns:stuId>
                  <xsl:value-of select="ns0:stuId"/>
               </tns:stuId>
               <tns:stuName>
                  <xsl:value-of select="ns0:stuName"/>
               </tns:stuName>
               <tns:totalMarks>
                  <xsl:value-of select="$TOTAL_MARKS"/>
               </tns:totalMarks>
               <xsl:choose>
                  <xsl:when test="$TOTAL_MARKS >= 200">
                     <tns:grade>A</tns:grade>
                  </xsl:when>
                  <xsl:when test="$TOTAL_MARKS >= 100 and $TOTAL_MARKS &lt; 200">
                     <tns:grade>B</tns:grade>
                  </xsl:when>
                  <xsl:otherwise>
                     <tns:grade>C</tns:grade>
                  </xsl:otherwise>
               </xsl:choose>
            </tns:StuResult>
         </xsl:for-each>
      </tns:StuResultCollection>
   </xsl:template>
</xsl:stylesheet>
