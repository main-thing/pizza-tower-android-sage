if (global.showcollisions){
	with(obj_solid){
		if (object_index == obj_solid || object_index == obj_secretbigblock || object_index == obj_secretblock || object_index == obj_secretmetalblock) {
			visible = true
		}
	}
	with(obj_slope){
		if (object_index == obj_slope){
			visible = true
		}
	}
	with(obj_platform){
		if (object_index == obj_platform) {
			visible = true
		}
	}
}
if (!global.showcollisions){
	with(obj_solid){
		if (object_index == obj_solid || object_index == obj_secretbigblock || object_index == obj_secretblock || object_index == obj_secretmetalblock) {
			visible = false
		}
	}
	with(obj_slope){
		if (object_index == obj_slope){
			visible = false
		}
	}
	with(obj_platform){
		if (object_index == obj_platform) {
			visible = false
		}
	}
}