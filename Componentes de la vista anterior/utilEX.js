
/***		Inicia Funciones Generales		***/
function Hash(){
	this.length = 0;
	this.items = new Array();

	this.getItem = function(in_key) {
		return this.items[in_key];
	}

	this.setItem = function(in_key, in_value){
		var tmp_previous;
		if (typeof(in_value) != 'undefined') {
			if (typeof(this.items[in_key]) == 'undefined') {
				this.length++;
			}else {
				tmp_previous = this.items[in_key];
			}
			this.items[in_key] = in_value;
		}	   
		return tmp_previous;
	}
}

