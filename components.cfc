<component>
    <cffunction  name="selectImage" returType="query" access="public">
            <cfquery name="getImage" datasource="WorkCubeDB">
            select * from images
            </cfquery>
        <cfreturn getImage>
    </cffunction>

    <cffunction name="insertImagePath" returType="query" access="public">
          <cfquery name="insertImage" datasource="WorkcubeDB">
            INSERT INTO images (imagepath)
            VALUES (
                <cfqueryparam value = "#form.fileUpload#" CFSQLType = "CF_SQL_NVARCHAR">
                )

           </cfquery> 
    </cffunction>
</component>