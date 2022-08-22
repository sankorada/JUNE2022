<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Insert_Stu_Info" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:ns0="http://practice.com/june/file/read/File_Read_stuInfo" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/file/JUNE2022SOAApplication/PracticeAdapters/File_Read_stuInfo"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/JUNE2022SOAApplication/PracticeAdapters/DB_Insert_Stu_Info">
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
            <oracle-xsl-mapper:schema location="../WSDLs/DB_Insert_Stu_Info.wsdl"/>
            <oracle-xsl-mapper:rootElement name="StuInfoCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DB_Insert_Stu_Info"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.4.0(XSLT Build 190828.0353.3300) AT [WED AUG 17 07:28:06 IST 2022].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <tns:StuInfoCollection>
         <xsl:for-each select="/ns0:stucollection/ns0:sturecord">
            <tns:StuInfo>
               <tns:stuId>
                  <xsl:value-of select="ns0:sid"/>
               </tns:stuId>
               <tns:stuName>
                  <xsl:value-of select="ns0:sname"/>
               </tns:stuName>
               <tns:eng>
                  <xsl:value-of select="ns0:eng"/>
               </tns:eng>
               <tns:hindi>
                  <xsl:value-of select="ns0:hindi"/>
               </tns:hindi>
               <tns:maths>
                  <xsl:value-of select="ns0:maths"/>
               </tns:maths>
            </tns:StuInfo>
         </xsl:for-each>
      </tns:StuInfoCollection>
   </xsl:template>
</xsl:stylesheet>
