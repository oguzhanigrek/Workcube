
<cfhttp result="instagramProfile" url="https://api.instagram.com/v1/users/self/?access_token=3989722738.1677ed0.1cc13be0f4674d2f8827161bdecc808e" method="get">
<cfhttp result="instagramMediaHTTP" url="https://api.instagram.com/v1/users/self/media/recent/?access_token=3989722738.1677ed0.1cc13be0f4674d2f8827161bdecc808e" method="get">
<cfset thedata=DeserializeJSON(instagramProfile.FileContent)>
<cfset instagramMediaSet = DeserializeJSON(#instagramMediaHTTP.FileContent#)>
<cfset ArrayListNo="#ArrayLen(instagramMediaSet.data)#">
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Document</title>
    </head>
    <body>
        <div class="row">
            <div class="col-xs-3 col-md-3">
                <div class="d-flex justify-content-center h-100">
                    <div class="image_outer_container">
                        <div class="green_icon"></div>
                        <div class="image_inner_container">
                             <cfoutput >
                                <img src="#thedata.data.profile_picture#">
                            </cfoutput>
                        </div>
                    </div>
                </div>
               
            </div>
            <div class="col-xs-8 col-md-8" >
                <cfoutput >
                    <p>Kullanici Adi : #thedata.data.username#</p>
                    <br/>
                    <p>Full Adi : #thedata.data.full_name#</p>
                    <br/>
                    <p>Takip Edilen : #thedata.data.counts.follows#</p>
                    <br/>
                    <p>Takipci : #thedata.data.counts.followed_by#</p>
                    <br/>
                    <p>Gonderi : #thedata.data.counts.media#</p>
                </cfoutput>

            </div>

          <div class="row">
            <div class="col-md-12" style="text-align:center">
                    <cfoutput><p > #thedata.data.username# Gonderileri</p></cfoutput>
                    <br/>
                    <cfloop from="1" to="#ArrayListNo#" index="i" >    
                    <cfoutput>
            
                    <img src="#instagramMediaSet.data[i].images.standard_resolution.url#"style="width:20%;"></cfoutput>
                    </cfloop>              
                </div>
            </div>
          </div>
    </body>
</html>
