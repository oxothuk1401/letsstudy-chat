"use strict"

$(document).ready(function() {
	// Доп параметры show & hide
	$('#openCloseParametr').show();
	$('#blockParametr').hide();

	$('#openCloseParametr').click(function(event) {
    	event.preventDefault(); // Для того чтобы при нажатии на ссы	\лку не кидало вверх
    	$('#blockParametr').slideToggle();
  	});

	// рейтинг звезд
	$("#newMess").click(function(){
		$("#messModal").modal();
	});
	
});