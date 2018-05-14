function check(thisform){
	with(thisform){
		if(validate_check(time,"提问时间未填写!")==false){
			time.focus();
			return false;
		}
		if(validate_check(ask,"提问内容未填写!")==false){
			ask.focus();
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