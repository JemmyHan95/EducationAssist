function check(thisform){
	with(thisform){
		if(validate_check(title,"标题未填写!")==false){
			title.focus();
			return false;
		}
		if(validate_check(time,"时间未填写!")==false){
			time.focus();
			return false;
		}
		if(validate_check(con,"内容未填写!")==false){
			con.focus();
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