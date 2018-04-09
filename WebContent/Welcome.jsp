<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
    	<div class="orangeText boldText padding10">Home Page: Product Management</div>                
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
                	<div class="boldText">Scan an item or enter information below</div>
                    <div class="spacer2"></div>
                      <form action="servletcontroller" method="GET">
                    <div class="floatLeft selectWidth20">
                  
                        <input name="pid" type="text" required pattern="^[1-9]\d*$" title="It should contain only numbers.please enter a number in this field .like 12345" class="inputboxBg selectWidth45" size="15" maxlength="15" placeholder="">
                        
                        <div class="padding10">Product ID</div>
                       
                    </div>
                    
                    <div class="floatLeft selectWidth25">
                   
                        <input name="pname" type="text" required class="inputboxBg selectWidth60" size="15" maxlength="15" placeholder="">
                        <div class="padding10">Product Name</div>
                     
                    </div>
                    <div class="floatLeft selectWidth25">
               
                        <input name="pdesc" type="text" required class="inputboxBg selectWidth60" size="15" maxlength="15" placeholder="">
                        <div class="padding10">Product Description</div>
                      
                    </div>
                    <div class="floatLeft selectWidth25">
                 
                        <input name="rel" type="text" required  class="inputboxBg selectWidth45" size="15" maxlength="15" placeholder="">
                        <div class="padding10">Related Items</div>
                      
                    </div>
                    
                    <div class="floatLeft selectWidth15">
                        <input type="submit" value=" Quick Add " class="greenButton" >
                        <input type="hidden" name="command" value="add">
                    
                    </div>    
                        </form> 
                                   
                    <div class="clear"></div>
                    <div class="spacer2"></div>
                </div>
                <div class="clear"></div>                                            	                
            </div>
            <div class="sharpblueBar">Added Items (Add items above if the list is empty)</div>
            <c:forEach var="tempProduct" items="${product_list}">
			  <c:url var="tempLink" value="servletcontroller">
						<c:param name="command" value="LOAD" />
						<c:param name="ProductId" value="${tempProduct.productId}" />
					</c:url>
					
					<c:url var="deleteLink" value="servletcontroller">
						<c:param name="command" value="delete" />
						<c:param name="ProductId" value="${tempProduct.productId}" />
					</c:url>
				<div class="alignCenter padding15 boldText dashedBorderRed">
                <div class="floatLeft selectWidth20 alignLeft blueText">
              <div class="floatLeft selectWidth70">  <a href=${tempLink }>Edit item</a></div>
                    <div class="floatLeft">|</div>
                    <div class="floatRight "><a href=${deleteLink }>delete</a></div>
                    <div class="clear"></div>
                </div>                
                <div class="floatLeft selectWidth25">${tempProduct.productId } </div>
                <div class="floatLeft selectWidth15 alignLeft">${tempProduct.productName } </div>
                <div class="floatLeft selectWidth25">${tempProduct.productDescription } </div>
                <div class="floatLeft selectWidth15 alignRight">${tempProduct.relateditems } </div>
                <div class="clear"></div>
               </div>
           

				</c:forEach>
           
            <div class="omblueLine"></div>
            <div class="container1">
            	<div class="blueText boldText">These items will be tied to Sales Rep AB1234.</div>
                <div class="spacer2"></div>
                <div class="boldText">
                	AT&T Any City, USA<br>
                	(555) 555-5555
                </div>
                <div class="spacer2"></div> 
                <div class="floatLeft selectWidth15">
                <form action="servletcontroller"method="get">
                <input type="hidden" name="command" value="logout">
                 <input type="submit" value=" Log Out " class="blueButton" onclick="location.href='login.jsp';">
                 </form>
                   
                </div>                     
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