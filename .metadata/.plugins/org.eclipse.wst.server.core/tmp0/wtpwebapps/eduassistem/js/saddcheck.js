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
		if(validate_check(major,"专业未填写!")==false){
			major.focus();
			return false;
		}
		if(validate_check(pwd,"密码未填写!")==false){
			pwd.focus();
			return false;
		}
		if(validate_check(address,"住址未填写!")==false){
			address.focus();
			return false;
		}
		if(validate_check(time,"入学时间未填写!")==false){
			time.focus();
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