//	Filtro Tabela Marca
	var campoFiltroMarca = document.querySelector(".filtrar-tabela");
	if(campoFiltroMarca != null){
		campoFiltroMarca.addEventListener("input", filtraCampoMarca);
	}
	
	function filtraCampoMarca(){
		console.log(this.value);
		var marcas = document.querySelectorAll(".tr-item");
		
		if(this.value.length > 0){
			for (var i = 0; i < marcas.length; i++) {
				var marca = marcas[i];
				var tdNome = marca.querySelector("#nome");
				var nome = tdNome.textContent;
				var expressao = new RegExp(this.value, "i");
				if( !expressao.test(nome)){
					marca.classList.add("invisivel");
				}else{
					marca.classList.remove("invisivel");
				}
			}
		}else{
			for (var i = 0; i < marcas.length; i++) {
				var marca = marcas[i];
				marca.classList.remove("invisivel");
			}
		}
	}

