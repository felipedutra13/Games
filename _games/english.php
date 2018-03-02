<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8"/>
		<title>English</title>
		<script type="text/javascript" src="https://code.jquery.com/jquery-3.0.0.min.js"></script>
	</head>
	<script>
		console.log("teste");
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
						$("#space").append("<input type='button' value='Reveal' onclick='reveal()'/>");
						
						
						
						
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
		
		function reveal(){
			for(var i=0; i<questions.length-1; i++){
				$("#"+i).val(answers[i]);
			}
		}
	</script>
	<body>
		<form action="../_php/add.php" method="post">
			<input type="text" value="english" name="type"/>
			<input type="text" name="question" placeholder="english"/>
			<input type="text" name="answer" placeholder="portuguese"/>
			<input type="submit" value="Add"/>
		</form>
		<h3>Select an option!</h3>
		<input type="button" value="Grammar(English to Portuguese)" onclick="exercises('grammar1');"/>
		<input type="button" value="Grammar(Portuguese to English)" onclick="exercises('grammar2');"/>
		<!--<input type="button" value="Exercises" onclick="exercises('exercises');"/>-->
		</br></br>
		<div id="space">
		</div>
	</body>
</html>