function check(thisform){
	with(thisform){
		if(validate_check(newpwd,"您尚未填写新密码!")==false){
			newpwd.focus();
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