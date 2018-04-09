<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, target-densityDpi=device-dpi, user-scalable=no"/>
<title>OPUS MOBILE</title>

<link rel="stylesheet" type="text/css" href="OM.css">

<body>
	
    <!--Code Starts Here-->
    <div class="container">
    	<div class="orangeText boldText padding10">Update Page: Product Management</div>                
        <div class="headerBarblock">
        	<div class="floatLeft boldText">&minus;</div>
            <div class="floatLeft paddingLeft10">Product Inventory</div>
            <div class="clear"></div>
        </div>
    	<!-- Below class to show LEFT and Right border -->
        <div class="headercontentblock1">                      
            <div class="container1"> 
            	<div class="floatLeft scanner"></div>
                <div class="floatLeft selectWidth85 ">
                	<div class="boldText">Update the information below</div>
                    <div class="spacer2"></div>
                      <form action="servletcontroller" method="GET">
                      <input type="hidden" name="command" value="upd">
                   
                      
                        <input name="pid" type="hidden" value=${produ.productId } >
                        
                    
                    <div class="floatLeft selectWidth25">
                   
                        <input name="pname" type="text"value=${produ.productName } class="inputboxBg selectWidth60" size="15" maxlength="15" placeholder="">
                        <div class="padding10">Product Name</div>
                     
                    </div>
                    <div class="floatLeft selectWidth25">
               
                        <input name="pdesc" type="text" value=${produ.productDescription } class="inputboxBg selectWidth60" size="15" maxlength="15" placeholder="">
                        <div class="padding10">Product Description</div>
                      
                    </div>
                    <div class="floatLeft selectWidth25">
                 
                        <input name="rel" type="text" value=${produ.relateditems } class="inputboxBg selectWidth45" size="15" maxlength="15" placeholder="">
                        <div class="padding10">Related Items</div>
                      
                    </div>
                    
                    <div class="floatLeft selectWidth15">
                        <input type="submit" value=" Update " class="greenButton" >
                        <input type="hidden" name="command" value="add">
                    
                    </div>    
                        </form>            
                    <div class="clear"></div>
                    <div class="spacer2"></div>
                </div>
                <div class="clear"></div>                                            	                
            </div>
            
            <div class="omblueLine"></div>
            <div class="container1">
            	<div class="blueText boldText">These items will be tied to Sales Rep AB1234.</div>
                
                <div class="spacer2"></div>
                <div class="boldText">
                	AT&T Any City, USA<br>
                	(555) 555-5555
                </div>
                <div class="spacer2"></div>
                <div class="clear"></div>
            </div>
        </div>
        <!-- End to show LEFT and Right border -->
        <!-- Below class to show Bottom border with LEFT and RIGHT rounded corners. -->
    	<div class="headercontentblock0"></div>
    	<!-- End to show Bottom border with LEFT and RIGHT rounded corners. -->
    	<div class="spacer2"></div>        
    </div> 
    <!--Code Ends Here-->
    

</body>
</html>