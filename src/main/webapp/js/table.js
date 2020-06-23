//SORTED BY HEADER
$(document).ready(function(){ 
	$(".table").tablesorter();
});

//FILTER
// To work, you need to put a class .filterable on search input, and the class .tr-item on your table rows;
var filterInput = document.querySelector(".filterable");
if(filterInput != null){
	filterInput.addEventListener("input", toFilterHere);
}

function toFilterHere(){
	var rows = document.querySelectorAll(".tr-item");
	
	if(this.value.length > 0){
		for (var i = 0; i < rows.length; i++) {
			var row = rows[i];
			var tdName = row.querySelector("#name");
			var name = tdName.textContent;
			var expressao = new RegExp(this.value, "i");
			if( !expressao.test(name)){
				row.classList.add("d-none");
			}else{
				row.classList.remove("d-none");
			}
		}
	}else{
		for (var i = 0; i < rows.length; i++) {
			var row = rows[i];
			row.classList.remove("d-none");
		}
	}
}

