function check(thisform){
	with(thisform){
		if(validate_check(ID,"编号未填写!")==false){
			ID.focus();
			return false;
		}
		if(validate_check(name,"姓名未填写!")==false){
			name.focus();
			return false;
		}
		if(validate_check(inst,"院系未填写!")==false){
			inst.focus();
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