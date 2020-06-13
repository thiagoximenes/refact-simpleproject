//$(document).ready(function(){
//});

$(".deletarProduto").click(function(){
		 
	 var oi = $(this).data("href");
	 swal({
		  title: "Tem certeza?",
		  text: "Vai ser apagado da base de dados!",
		  type: "warning",
		  showCancelButton: true,
		  confirmButtonColor: "#DD6B55",
		  confirmButtonText: "Sim, deletar!",
		  cancelButtonText: "Nao, cancelar.",
		  closeOnConfirm: false,
		  closeOnCancel: false
	 },
	 function(isConfirm){
		 if (isConfirm) {
			 window.location = oi;
		 }else {
			 swal({
				title: "Cancelado",
				text: "A operação foi cancelada!", 
				type:"error",
				timer: 800,
				showConfirmButton: false
			 });
		 }
	 });
});



$(document).ready(function(){ 
	$("#tabela").tablesorter();
});




//jQuery(function($){
//	$('[data-toggle="tooltip"]').tooltip(); 
//	
//	$(".deletarProduto").click(function(){
//		
//		var oi = $(this).data("href");
//		swal({
//			dangerMode: true,
//			buttons: true,
//		},
//		function(isConfirm){
//			if (isConfirm) {
//				window.location = oi;
//			}else {
//				swal({
//					title: "Cancelado",
//					text: "A operação foi cancelada!", 
//					type:"error",
//					timer: 800,
//					showConfirmButton: false
//				});
//			}
//		});
//		
//	});
//});



/**
 * 
 */

/* Mascaras pre-existentes*/
/*$.mask.masks : {
 'phone'     : { mask : '(99) 9999-9999' },
 'phone-us'  : { mask : '(999) 9999-9999' },
 'cpf'       : { mask : '999.999.999-99' },
 'cnpj'      : { mask : '99.999.999/9999-99' },
 'date'      : { mask : '39/19/9999' }, //uk date
 'date-us'   : { mask : '19/39/9999' },
 'cep'       : { mask : '99999-999' },
 'time'      : { mask : '29:69' },
 'cc'        : { mask : '9999 9999 9999 9999' }, //credit card mask
 'integer'   : { mask : '999.999.999.999', type : 'reverse' },
 'decimal'   : { mask : '99,999.999.999.999', type : 'reverse', defaultValue: '000' },
 'decimal-us'    : { mask : '99.999,999,999,999', type : 'reverse', defaultValue: '000' },
 'signed-decimal'    : { mask : '99,999.999.999.999', type : 'reverse', defaultValue : '+000' },
 'signed-decimal-us' : { mask : '99,999.999.999.999', type : 'reverse', defaultValue : '+000' }
}
*/

//$.mask.masks = $.extend($.mask.masks,{
//    msk:{ mask: '999-999' },
//    other_msk:{ mask: '6666' },
//    another_one:{ mask: '7777' , type:'reverse' },
//    decimal_ctx:{ mask: '999,99999' , type:'reverse', defaultValue :'0000'},
//    decimal_ct5:{ mask: '99,99999' , type:'reverse', defaultValue :'000'},
//    decimal_ctt:{ mask: '99,999' , type:'reverse', defaultValue :'000'},
//    decimal_ct:{ mask: '99,999' , type:'reverse', defaultValue :'000'},
//    integer_estoque:{ mask: '999999', defaultValue :'0'},
//    semanasmes:{ mask: '5', defaultValue :'1'},
//    termina_em:{ mask: '39/19/2039', autoTab:false, defaultValue :'00002018'},
//    phone_9digito:{ mask: '(99) 99999-9999'},
//    numero3int:{ mask: '999', type:'reverse', defaultValue :'0'},
//    numero4int:{ mask: '9999', type:'reverse', defaultValue :'0'},
//    numero4intnoreverse:{ mask: '9999', defaultValue :'0'},
//    numero5int:{ mask: '99999', type:'reverse', defaultValue :'0'},
//    numero6int:{ mask: '999999', type:'reverse', defaultValue :'0'},
//    numero2double:{ mask: '9,99', type:'reverse', defaultValue :'000'},
//});

	 //INCLUSÃO FICHA TÉCNICA DE PREPARAÇÃO
//	 $("#produto-preco").setMask("decimal_ct");
//	 $("#produto-pb").setMask("decimal_ct5");
//	 $("#produto-pl").setMask("decimal_ct5");
//	 $("#produto-fc").setMask("decimal_ct");
//	 $("#produto-pbPc").setMask("decimal_ctt");
//	 $("#produto-plPc").setMask("decimal_ctt");
//	 $("#produto-custoPc").setMask("decimal_ct")
//	 $("#produto-custoTt").setMask("decimal_ct");
	 
	//INCLUSÃO DISTRIBUIÇÃO DE REFEIÇÃO
//	 $("#distribuicao-dr_data").setMask("termina_em");
//	 $("#distribuicao-nRefeicao").setMask("numero4intnoreverse");
	 
	//CADASTRO CARDÁPIO
//	 $("#cardapio-dataini").setMask("termina_em");
//	 $("#cardapio-datafim").setMask("termina_em");
//	 $("#cardapio-semana").setMask("semanasmes");
	 
	//INCLUSÃO DE FICHADR
//	 $("#itemdistribuicao-dr_ttProduzido").setMask("numero5int");
//	 $("#itemdistribuicao-dr_ttConsumido").setMask("numero5int");
//	 $("#itemdistribuicao-dr_sobraLimpa").setMask("numero5int");
//	 $("#itemdistribuicao-dr_descarte").setMask("numero5int");
//	 $("#itemdistribuicao-dr_descartePc").setMask("decimal_ct");
//	 $("#itemdistribuicao-dr_pp").setMask("decimal_ct");
//	 $("#itemdistribuicao-dr_rtIngestao").setMask("decimal_ct")
	 
	 //CADASTRO FICHA TÉCNICA
//	 $("#ficha-tmppreparo").setMask("numero3int");
//	 $("#ficha-tmpreparo").setMask("numero3int");
//	 $("#ficha-nporcao").setMask("numero3int");
//	 $("#ficha-rend").setMask("decimal_ct5");
//	 $("#ficha-frend").setMask("decimal_ct");
	 
	 //DETALHES PRODUTO
//	 $("#carbo").setMask("decimal_ct");
//	 $("#gordu").setMask("decimal_ct");
//	 $("#prote").setMask("decimal_ct");
//	 $("#coles").setMask("decimal_ct");

//	 $("#produto-carboidratos").setMask("decimal_ct");
//	 $("#produto-gorduras").setMask("decimal_ct");
//	 $("#produto-proteinas").setMask("decimal_ct");
//	 $("#produto-colesterol").setMask("decimal_ct");
	 
//		 swal({
//			  title: "Tem certeza?",
//			  text: "Vai ser apagado da base de dados!",
//			  type: "warning",
//			  showCancelButton: true,
//			  confirmButtonColor: "#DD6B55",
//			  confirmButtonText: "Sim, deletar!",
//			  cancelButtonText: "Nao, cancelar.",
//			  closeOnConfirm: false,
//			  closeOnCancel: false
//			},
 
//var date = document.querySelector('[type=date]').value;
//
//date.value = '08/06/2017'.split('/').reverse().join('-');
//
//var brDate = '2017-06-08'.split('-').reverse().join('/');
//var inputDate = '08/06/2017'.split('/').reverse().join('-');
//
//console.log("br date: " + brDate);
//console.log("input date: " + inputDate);