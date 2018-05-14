function check(thisform){
	with(thisform){
		if(validate_check(name,"用户名未填写!")==false){
			name.focus();
			return false;
		}
		if(validate_check(pwd,"密码未填写!")==false){
			pwd.focus();
			return false;
		}
		return true;
	}
}
function validate_check(field,alerttxt){
	with(field){
		if(value==null||value==""){
			alert(alerttxt);
			return false;
		}
		else
			return true;
	}
}