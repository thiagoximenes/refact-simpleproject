$(".deletarProduto").click(function(){
		 
	 var oi = $(this).data("href");
	 
	 Swal.fire({
		 title: 'Are you sure?',
		 text: "You won't be able to revert this!",
		 icon: 'warning',
		 showCancelButton: true,
		 confirmButtonColor: '#3085d6',
		 cancelButtonColor: '#d33',
		 confirmButtonText: 'Yes, delete it!'
	 }).then((result) => {
		 if (result.value) {
			 Swal.fire(
					 'Deleted!',
					 'Your file has been deleted.',
					 'success'
			 )
			 setInterval(() => {
				 console.log("Deletado");
				 window.location = oi;
			 }, 900);	
		 }
	 });
	 
});

$("#login-contact-us").click(function(){
	 
//	 var oi = $(this).data("href");
	Swal.fire({
		  title: '<strong>Contact us</strong>',
		  html:
		    '<p>Send me a message: </>' +
		    '<br/>' +
		    '<a href="mailto:thiagoximenesfhrc@gmail.com">thiagoximenesfhrc@gmail.com</a> ',
		  showCloseButton: false,
		  showCancelButton: true,
		  focusConfirm: false,
		  confirmButtonText:
		    '<i class="fa fa-thumbs-up"></i> Great!',
		  confirmButtonAriaLabel: 'Thumbs up, great!',
		  cancelButtonText:
		    '<i class="fa fa-thumbs-down"></i>',
		  cancelButtonAriaLabel: 'Thumbs down'
		})

});
