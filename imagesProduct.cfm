
    <cfset query=createObject("component", "components")>
    <cfset uploadedFilePath = "C:/ColdFusion2018/cfusion/wwwroot/Goruntuleme/src/image">
    <cfset slash ="\">

        <cffile action="upload" 
        destination="#uploadedFilePath#" 
        nameConflict="overwrite" 
        fileField="FILETOUPLOAD"
        > 
    <cfset imageFilePathInCfFile = cffile.ServerDirectory  &= slash &= cffile.serverfile >
    <cfset imageFilePathInCfFileType = cffile.ClientFileExt >
    <cfset imageFolderShort = "src/image/">
    <cfset imageWebPath = cffile.serverfile > 
    <cfset imageFilePathToWeb =imageFolderShort &= imageWebPath >
    <cfset imageFileName = cffile.serverfile >
    <br/>
<!---

    <cfdump var = "#imageFilePathToWeb#">
    <cfdump var = "#imageFilePathinCfFile#">
    <cfdump var = "#cffile#">

    --->
 
        
            <cfquery name="insertImage" datasource="WorkcubeDB">
                        INSERT INTO images (imagepath,imagetype,imageWebPath,imagename,description)
                        VALUES (
                            <cfqueryparam value = "#imageFilePathInCfFile#" CFSQLType = "CF_SQL_NVARCHAR">,
                            <cfqueryparam value = "#imageFilePathInCfFileType#" CFSQLType = "CF_SQL_NVARCHAR">,
                            <cfqueryparam value = "#imageFilePathToWeb#" CFSQLType = "CF_SQL_NVARCHAR">,
                            <cfqueryparam value = "#imageFileName#" CFSQLType = "CF_SQL_NVARCHAR">,
                            <cfqueryparam value = "#form.description#" CFSQLType = "CF_SQL_NVARCHAR">
                            
                            )

           </cfquery> 
            <component>
                <cffunction  name="select" returType="query" access="public">
                        <cfquery name="selectImageFilePathToWeb" datasource="WorkcubeDB">
                        select imagewebpath from images
                    </cfquery>
                        
                    <cfreturn selectImageFilePathToWeb>
                </cffunction>
            </component>
           
<script type="text/javascript">
    document.location.href = "index.cfm";
</script>
