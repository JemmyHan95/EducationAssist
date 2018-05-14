function check(thisform){
	with(thisform){
		if(validate_check(newads,"您尚未填写新地址!")==false){
			newads.focus();
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