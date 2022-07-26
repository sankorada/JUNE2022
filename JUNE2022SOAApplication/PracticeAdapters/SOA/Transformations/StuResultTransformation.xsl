<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:ns0="http://practice.com/june/file/read/File_Read_stuInfo" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="http://practice.com/file/write/File_Write_stuResult" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/file/JUNE2022SOAApplication/PracticeAdapters/File_Read_stuInfo"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/file/JUNE2022SOAApplication/PracticeAdapters/File_Write_stuResult">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/File_Read_stuInfo.wsdl"/>
            <oracle-xsl-mapper:rootElement name="stucollection" namespace="http://practice.com/june/file/read/File_Read_stuInfo"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/File_Write_stuResult.wsdl"/>
            <oracle-xsl-mapper:rootElement name="sturesultCollection" namespace="http://practice.com/file/write/File_Write_stuResult"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.4.0(XSLT Build 190828.0353.3300) AT [THU AUG 11 07:36:15 IST 2022].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <tns:sturesultCollection>
         <xsl:for-each select="/ns0:stucollection/ns0:sturecord">
            <tns:sturesult>
               <tns:stu_id>
                  <xsl:value-of select="ns0:sid"/>
               </tns:stu_id>
               <tns:stu_name>
                  <xsl:value-of select="ns0:sname"/>
               </tns:stu_name>
               <tns:total_marks>
                  <xsl:value-of select="ns0:eng + ns0:hindi + ns0:maths"/>
               </tns:total_marks>
            </tns:sturesult>
         </xsl:for-each>
      </tns:sturesultCollection>
   </xsl:template>
</xsl:stylesheet>
