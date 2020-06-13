var olho = $("#visu-olho");
var asterisco = $("#visu-asterisco");
var senha = $("#visu-senha");
var i=1;

olho.click(function() {
	if(i==1){
		asterisco.addClass("invis");
		senha.removeClass("invis");
		i==0;
	}else{
		asterisco.addClass("vis");
		senha.removeClass("vis");
		i==0;
	}
});

olho.mouseleave(function(){
});