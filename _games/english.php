<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8"/>
		<title>English</title>
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
	</head>
	<script>
		var questions = [];
		var answers = [];
		function exercises(option){
			//////try to make the request
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200) {
						var toSplit = this.responseText;
						var toSplit2 = toSplit.split("=");
						questions = toSplit2[0].split("|");
						answers = toSplit2[1].split("|");
						for(var i=0; i<questions.length-1; i++){
							$("#space").append(""+questions[i]+" <input id='"+i+"' type='text'/></br></br>");
						}
						$("#space").append("<input type='button' value='Check' onclick='checkAnswers()'/>");
						
						
						
						
				}
			};
			xmlhttp.open("GET", "exercises.php?option="+option, true);
			xmlhttp.send();
		}
		
		function checkAnswers(){
			for(var i=0; i<questions.length-1; i++){
				var myAnswer = $("#"+i).val();
				if(myAnswer == answers[i])
				{
					$("#"+i).css("color", "blue");
					console.log("Equal\nmyAnswer: "+myAnswer);
					console.log("Answer: "+answers[i]);
				}
				else {
					console.log("Not\nmyAnswer: "+myAnswer);
					console.log("Answer: "+answers[i]);
					$("#"+i).css("color", "red");
				}
			}
		}
	</script>
	<body>
		<h1>Select an option!</h1>
		<input type="button" value="Grammar(English to Portuguese)" onclick="exercises('grammar1');"/>
		<input type="button" value="Grammar(Portuguese to English)" onclick="exercises('grammar2');"/>
		<input type="button" value="Exercises" onclick="exercises('exercises');"/>
		</br></br>
		<div id="space">
		</div>
	</body>
</html>