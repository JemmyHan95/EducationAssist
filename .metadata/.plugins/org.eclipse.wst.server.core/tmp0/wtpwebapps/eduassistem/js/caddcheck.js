function check(thisform){
	with(thisform){
		if(validate_check(ID,"编号未填写!")==false){
			ID.focus();
			return false;
		}
		if(validate_check(name,"课程名称未填写!")==false){
			name.focus();
			return false;
		}
		if(validate_check(inst,"开课院系未填写!")==false){
			inst.focus();
			return false;
		}
		if(validate_check(teacher,"授课教师未填写!")==false){
			teacher.focus();
			return false;
		}
		if(validate_check(credit,"学分未填写!")==false){
			credit.focus();
			return false;
		}
		if(validate_check(address,"上课地点未填写!")==false){
			address.focus();
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