//0 - joel
//1 - ellie
//2 - diddy
//3 - dixie
//4 - serge
//5 - kid
var cardsUp = 0;
var valueUp = "";
var firstCard;
var secondCard;
var score = 0;
var finalScore = 4;

$(document).ready(function () {
	////tentar adicionar as imagens em tmepo de execucao
	for(var i=0; i<finalScore*2; i++)
		$("#board").append("<div class=\"card\"><div class=\"front\"><img src=\"images/card.png\"/></div><div class=\"back\"><img src=\"\"/></div></div>");
	/////////////////////////////////////////////////

	//here charge the cards
	var arrayCards = [0,1,2,3,4,5,6,7];

	$(".card").each(function() {
		$(this).attr("faceup", "false");
		$(this).attr("correct", "false");
 		//$(#debug).text("entrou na funcao");
		var random = Math.floor(Math.random() * arrayCards.length);
		var val = arrayCards[random];
		if(val == 0) {
			$(this).attr("value", "joel");
			$(this).attr("par", "ellie");
		}
		if(val == 1){
			$(this).attr("value", "ellie");
			$(this).attr("par", "joel");
		}
		if(val == 2) {
			$(this).attr("value", "diddy");
			$(this).attr("par", "dixie");
		}
		if(val == 3) {
			$(this).attr("value", "dixie");
			$(this).attr("par", "diddy");
		}
		if(val == 4) {
			$(this).attr("value", "serge");
			$(this).attr("par", "kid");
		}
		if(val == 5) {
			$(this).attr("value", "kid");
			$(this).attr("par", "serge");
		}
		if(val == 6) {
			$(this).attr("value", "mario");
			$(this).attr("par", "peach");
		}
		if(val == 7) {
			$(this).attr("value", "peach");
			$(this).attr("par", "mario");
		}

		arrayCards.splice(random, 1);
	});
});

$(function() {
	$(".card").click(function() {
		if($(this).attr("correct") == "false")
		{
		$(this).flip("toggle");
		$("#flip-sound").get(0).play();
			if($(this).attr("faceup") == "false"){
				cardsUp++;
				$(this).attr("faceup", "true");
				$(".back img", this).attr("src", "images/"+$(this).attr("value")+".png");
					if(cardsUp == 1)
					{
						firstCard = $(this);
					}
				if(cardsUp == 2) {
					secondCard = $(this);
					cardsUp = 0;
					if($(this).attr("par") == firstCard.attr("value"))
					{
						$("#correct-sound").get(0).play();
						score++;
						$(this).attr("correct", "true");
						firstCard.attr("correct", "true");
					}
					else {
						$("#wrong-sound").get(0).play();
						$(this).attr("faceup", "false");
						var myInterval = setInterval(function() {
							secondCard.attr("faceup", "false");
							firstCard.attr("faceup", "false");
							secondCard.flip("toggle");
							firstCard.flip("toggle");
							clearInterval(myInterval);
				},800);
					}
					
					
				if(score == finalScore)
				{
					$("#win-sound").get(0).play();
					$("#end-game").css("display", "block");
				}
				}
			}
			else {
				cardsUp--;
				$(this).attr("faceup", "false");
				$(this).attr("src", "images/card.png");
			}
		}
	});
});

$(function () {
  $(".card").flip({
  trigger: 'manual'
});
$("#start-screen").click(function() {
		$(this).css("display", "none");
	});
});
