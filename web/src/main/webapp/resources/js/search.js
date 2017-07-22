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
	// отправка сообщения
	$("#newMess").click(function(){
		$("#messModal").modal();
	});

	// просмотр видео
	$("#video").click(function(){
		$("#videoModal").modal();
	});

	// просмотр календаря
	$("#calendar").click(function(){
		$("#calendarModal").modal();
	});

	// оплата
	$("#pay").click(function(){
		$("#payModal").modal();
	});

});