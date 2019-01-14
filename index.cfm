<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="style.css" />
    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="css/style.css">

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <!-- Bootstrap core CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.6.1/css/mdb.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
    <!-- Bootstrap core CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.6.0/css/mdb.min.css" rel="stylesheet">
    <link href="css/lightbox.css" rel="stylesheet">
    <title>Document</title>
    </head>
<body id="homepage" >
    
<cfform method="post" action="imagesProduct.cfm" enctype="multipart/form-data" >
    <div class="header" style="text-align:left;width=100%;height=100%;">
                        <img src="src/image/workcube-logo.png">
    </div>
    <div class="row">
                <div class="col-sm-4" style="text-align:center;width=100%;height=100%; overflow:inherit;border-right: 2px solid black;border-top: 2px solid black;
                                            border-size:2px 3px 1px 5px;border-type: dotted dash solid double;border-color: black;">
                        <br/>
                        <cfinclude template = "instagramWebService.cfm">   
                </div>
                <div class="col-sm-4" style="text-align:center;width=100%;height=100%; overflow:inherit;border-top: 2px solid black;border-size:2px 3px 1px 5px;
                                            border-type: dotted dash solid double;border-color: black;">
                                            <p> #bluebottle instagram </p>
                                            <br/>
                                            <cfinclude template = "instagramHashTag.cfm">   
                </div>


                <div class="col-sm-4" style="text-align:center;width=100%;height=100%; overflow:inherit;border:2px solid black;border-size:2px 3px 1px 5px;
                                            border-type: dotted dash solid double;border-color: black;">
                                     <input type="file" name="FiletoUpload" class="custom-file-input" id="BrowseImage" aria-describedby="inputGroupFileAddon01">      
                                     <label class="custom-file-label" for="BrowseImage">Resim Secimi</label>
                                     <textarea class="form-control" name="description" required  rows="1"> Aciklama</textarea>
                                     <input type="submit" value="Resmi Gonder"> 
                                <div class="row">
                                    <div class="col-sm-8"> 
                                        <section>
                                            <cfquery name="selectImageFilePathToWeb" datasource="WorkcubeDB">
                                                                select * from images
                                            </cfquery>
                                            <cfoutput query = "selectImageFilePathToWeb" >
                                                <a class="example-image-link" href="#imagewebpath#" data-lightbox="example-1">
                                                <img class="example-image" src="#imagewebpath#" style="width:30%" /></a>
                                            </cfoutput>
                                        </section>
                                    </div>
                                </div>  
                </div>         
        </div>               
</cfform>
<script>
    lightbox.option({
      'resizeDuration': 200,
      'wrapAround': true
    })
</script>
<script src="js/lightbox.js"></script>


</body>
</html>