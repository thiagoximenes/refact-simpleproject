var senhaNova = $("#senha_nova");
var senhaRepNova = $("#rep_senha_nova");
var form = $("#alterarSenhaForm");

var msgErroQ = $("#msgErro-qtddLetrasSenha");
var msgErroA = $("#msgErro-alteraSenha");

var btn = $("#alterar-senha-btn");

form.submit(function(event) {
	
	if(senhaNova.val().length<4){
		
		msgErroQ.removeClass("invis");
		msgErroQ.addClass("vis");
		btn.addClass("unico-alterarSenhaBtn");
		
		setTimeout(function() {
			msgErroQ.removeClass("vis");
			msgErroQ.addClass("invis");
			btn.removeClass("unico-alterarSenhaBtn");
		}, 3000);
		
		console.log("MENOS DE 4 LETRAS");
	}else if(senhaNova.val()==senhaRepNova.val()){
		console.log("OK");
		return true;
	}else{
		
		msgErroA.removeClass("invis");
		msgErroA.addClass("vis");
		btn.addClass("unico-alterarSenhaBtn");
		
		setTimeout(function() {
			msgErroA.removeClass("vis");
			msgErroA.addClass("invis");
			btn.removeClass("unico-alterarSenhaBtn");
		}, 3000);
		
		console.log("ERRO");
		return false;
	}
	return false;
});
