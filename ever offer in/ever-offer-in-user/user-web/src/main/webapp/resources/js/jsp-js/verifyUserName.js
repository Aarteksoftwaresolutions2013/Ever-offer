function userNameVarification(verify) {
	    var userName =verify.value;
	     $.ajax({
	  		url : "verifyUsername.html?userName=" + userName,
	  		type : "GET",
	  		contentType : "application/json; charset=utf-8",
	  		
	  		success : function(statusValue) {
	  			 if(statusValue=="true"){
	  				alert("User Name already existed!");
	  				 document.getElementById("userName").value="";  
	  			} 
	  		},
	  		
	  		error : function() {
	  			alert("error");
	  		}
	  	})
	  }  

