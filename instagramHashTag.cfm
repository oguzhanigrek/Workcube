
<cfhttp result="instagramHashtagSearch" url="https://graph.facebook.com/17843857450040591/recent_media?user_id=17841403922158715&access_token=EAAgRbTejtMoBAIIxjQx7cQM99FPNAktoS3CJm8zSKsgDuhiiIPnoqetsNNhrnFS1IDTlrTwvDZAnXCN2Y1OUeXyvbDFcXzCzWCYqnTz6nOcoBK3wkufY5KPL1v8jmno5joZAtuFwPPFNDRxRiS06HGQr4ZCNwIZD&fields=id,media_type,comments_count,like_count,media_url,permalink,caption" method="get">
<cfset instagramHashTag =DeserializeJson(instagramHashtagSearch.FileContent)>
<cfset ArrayListNo="#ArrayLen(instagramHashTag.data)#">
<cfset image ="IMAGE">
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
            <cfoutput>
                <cfloop from="1" to="#ArrayListNo#" index="i" > 
                    <div class="col-md-2" style="text-align:center">
                        <cfif #instagramHashTag.data[i].media_type# EQ #image# >
                            <a href="#instagramHashTag.data[i].permalink#">
                            <img src="#instagramHashTag.data[i].media_url#" style="width:100%" >
                        </cfif>
                    </div>
                </cfloop>
            </cfoutput> 
         </div>
    </body>
</html>
