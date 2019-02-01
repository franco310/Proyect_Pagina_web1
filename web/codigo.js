$(function() { 
	var emailreg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
	
	$(".boton").click(function(){  
		$(".error").fadeOut().remove();
		 
        if ($(".email").val() == "" || !emailreg.test($(".email").val())) {
			$(".email").focus().after('<span class="error">Ingrese un email correcto</span>');  
			return false;  
		}  
		if ($(".contraseña").val() == "") {  
			$(".contraseña").focus().after('<span class="error">Ingrese la contraseña</span>');  
			return false;  
		}
		 
          
    });  
	$(".contraseña").bind('blur keyup', function(){  
        if ($(this).val() != "") {  			
			$('.error').fadeOut();
			return false;  
		}  
	});	
	$(".email").bind('blur keyup', function(){  
        if ($(".email").val() != "" && emailreg.test($(".email").val())) {	
			$('.error').fadeOut();  
			return false;  
		}  
	});
	
});
