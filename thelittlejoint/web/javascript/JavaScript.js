/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function LoginForm(){
    // Get the modal
    //window.location="Form.html";
    document.getElementById('id01').style.display='block';
    var signupform = document.getElementById('id01');

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target === signupform) {
            signupform.style.display = "none";
        }
    };
}

function Relocate_Profile(){
    location.href = "Profile.jsp";
}
function AdminLogout(){
    if(confirm("Do you really want to log out")){
        return location.href = "Admin_signin.jsp";
    }else{
        return false;
    }
    
}

function Logout(){
    if(confirm("Do you really want to log out")){
        return location.href = "index.html";
    }else{
        return false;
    }
    
}
function menuupdate(){
    location.href="AdminPage_EditMenu.jsp";
}
function backto(){
    location.href="Admin_page.jsp";
}
function validationbook(){
    var a,b,c;
    a = document.getElementById("dateobj").value;
    if (a === "") {
        alert("Enter a Date");
        return false;
    };
    
    a = document.getElementById("dateobj").value;
    var today = new Date();
    
     
    if (Date.parse(a)< today) {
        alert("Invalid booking date, Please enter future date");
        return false;
    };
    
    b = document.getElementById("time").value;
    if (b === "") {
        alert("Enter a  Time");
        return false;
    };
    c = document.getElementById("Party_Size").value;
    if (c === "") {
        alert("Enter a Party Size");
        return false;
    };
}
function updatedetails(){
    var a,b,c,d,e,f,g;
    a = document.getElementById("roomno").value;
    if (a === "") {
        alert("Enter a Room No");
        return false;
    };
    b = document.getElementById("buildingarea").value;
    if (b === "") {
        alert("Enter a  Building Area");
        return false;
    };
    c = document.getElementById("city").value;
    if (c === "") {
        alert("Enter a city");
        return false;
    };
    
    d = document.getElementById("landmark").value;
    if (d === "") {
        alert("Enter a Landmark");
        return false;
    };
    e = document.getElementById("altmobile").value;
    if (e === "") {
        alert("Enter a  Alternate Mobile");
        return false;
    };
    f = document.getElementById("addtype").value;
    if (f === "") {
        alert("Enter a Address Type");
        return false;
    };
    g = document.getElementById("pincode").value;
    if (g === "") {
        alert("Enter a Pincode");
        return false;
    };
}
function goback(){
    location.href="Profile_details.jsp";
}
function changepassword(){
    var a,b,c;
    a = document.getElementById("oldpass").value;
    if (a === "") {
        alert("Enter a Old Password");
        return false;
    };
    b = document.getElementById("newpass").value;
    if (b === "") {
        alert("Enter a New Password");
        return false;
    };
    c = document.getElementById("confirmpass").value;
    if (c === "") {
        alert("Enter a New Password Again");
        return false;
    };
    if (a === b) {
        alert("Your New Password Not Be Same As Old Password");
        return false;
    };
    if(b !== c){
        alert("Enter Valid Password ");
        return false;
    };
}

  function CalculateTotal(quantity, price, total)
   {
        var price = price[0].innerHTML;
        var quantity = parseInt(quantity);
        total[0].innerHTML = quantity  * price;
                            
        DisplayTotal();
   }
                        
   function DisplayTotal()
   {
    var table=document.getElementById("table"),sumVal=0;
       for(var i=1;i<table.rows.length;i++)
       {
           sumVal=sumVal+parseInt(table.rows[i].cells[4].innerHTML);
       }
        document.getElementById("val").innerHTML=sumVal;
    }
                        
    function addMenu(menuitemid, menuname, price)
    {
        var rowCount = $('#table tr').length;
                           
        $('#table').append('<tr id="row'+rowCount+'">\n\
                            <td id="tdHdn'+rowCount+'" style="display:none">'+menuitemid+'</td><td id="tdMenuName'+rowCount+'">'+menuname+'</td><td id="tdPrice'+rowCount+'">'+price+'</td>\n\
                            <td id="tdQuantity">\n\
                              <input type="number" Style="width:80%;float: left" id="txtQuantity'+rowCount+'" max="30" min="1" onblur="CalculateTotal(this.value,$(\'#tdPrice'+rowCount+'\'),$(\'#tdTotal'+rowCount+'\'))" value="1"/></td>\n\
                            <td id="tdTotal'+rowCount+'"></td>\n\
                            <td><input type="button" value="X"  id="row'+rowCount+'" onclick="javascript:deleteRow(this.id)"/></td>');
                            
                            var txtQuantityId = "txtQuantity"+rowCount;
                            
                            CalculateTotal(document.getElementById(txtQuantityId).value,$('#tdPrice'+rowCount+''),$('#tdTotal'+rowCount+''));
    }
                    
    function deleteRow(rowid)  
    {
        var row = document.getElementById(rowid);
        var table = row.parentNode;
        while ( table && table.tagName !== 'TABLE' )
           table = table.parentNode;
            if ( !table )
               return;
            table.deleteRow(row.rowIndex);
                        
            DisplayTotal();
                        
    }
                        
    function placeOrder()
    {                       
       
             
       var rowCount = $('#table tr').length;
       
       if(rowCount>1)
       {
       var jsonString = "[";
       
       for(var i=1;i<rowCount;i++)
       {
          var menuitemid = document.getElementById('tdHdn'+i).innerHTML;
          var menuname = document.getElementById('tdMenuName'+i).innerHTML;
          var menuPrice = document.getElementById('tdPrice'+i).innerHTML;
          var quantity = document.getElementById('txtQuantity'+i).value;
          var total = document.getElementById('tdTotal'+i).innerHTML;
          
          jsonString+="{";
          jsonString+="\"menuitemid\": "+menuitemid+",";
          jsonString+="\"menuname\": \""+menuname+"\",";
          jsonString+="\"price\": "+menuPrice+",";
          jsonString+="\"quantity\": "+quantity+",";
          jsonString+="\"total\": "+total+"";
          
          
          if(i===rowCount-1)
          {
             jsonString+="}";
          }
          else
          {
              jsonString+="},";
          }
       }
       
       jsonString+="]"; 
       
       var orderdata = JSON.parse(jsonString);
        console.log(orderdata);
        $.ajax({
                  type:"POST",
                  url: "http://localhost:8080/thelittlejoint/PlaceOrder",
                  data:{jsonData:JSON.stringify(orderdata)},
                  dataType:"json",
                  complete: function (jqXHR, textStatus) {
                      window.location.href="OrderConfirm.jsp";
                    }
                    //error: function(jqXHR, textStatus, errorThrown){
                     //   alert(errorThrown);
                    //}      
               });
        //return false;
    }
    }
    
function orderConfirmpagechcecking(){
        var a=document.getElementById("address").innerHtml;
        var notChecked=0;
        
        if(a === null || a === ""){
            alert("please enter delivery address click on Edit to enter address");
            return false;
        }
        
        for ( i = 1; i <= 2;i++) 
        {
            if(document.getElementById(i).checked)
            notChecked=1;
        }
        if(notChecked === 0) {
            alert("Please select one delivery perference");
            return false;
        };
        if(!document.getElementById(3).checked){
            alert("please select payment method before proceed");
            return false;
        }
        
}


function openWindow(orderId)
{
     PopupCenter("http://localhost:8080/thelittlejoint/OrderDetails.jsp?orderid="+orderId, "Order Details",400,400);
}

function PopupCenter(url, title, w, h) {
    // Fixes dual-screen position                         Most browsers      Firefox
    var dualScreenLeft = window.screenLeft !== undefined ? window.screenLeft : window.screenX;
    var dualScreenTop = window.screenTop !== undefined ? window.screenTop : window.screenY;

    var width = window.innerWidth ? window.innerWidth : document.documentElement.clientWidth ? document.documentElement.clientWidth : screen.width;
    var height = window.innerHeight ? window.innerHeight : document.documentElement.clientHeight ? document.documentElement.clientHeight : screen.height;

    var left = ((width / 2) - (w / 2)) + dualScreenLeft;
    var top = ((height / 2) - (h / 2)) + dualScreenTop;
    var newWindow = window.open(url, title, 'scrollbars=yes, width=' + w + ', height=' + h + ', top=' + top + ', left=' + left);

    // Puts focus on the newWindow
    if (window.focus) {
        newWindow.focus();
    }
}

function signin(){
    var a=document.getElementById("btnsignin");
    alert("Please Sign in for order food online");
    return a.click();
}
