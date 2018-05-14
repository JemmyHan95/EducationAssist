function check(thisform){
	with(thisform){
		if(validate_check(neweml,"您尚未填写新联系方式!")==false){
			neweml.focus();
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