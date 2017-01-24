////initialize function
var velBall, velPlayer,velX, velY, alfa;
var canvasWidth = 900, canvasHeight = 480, playerWidth = 10, playerHeight = 100, ballRadius = 8;
var stage, leftPlayer, rightPlayer, ball, ballDirection, count1=0, count2=0, distance, direction;

function init() {
	stage = new createjs.Stage("canvas"); ////create a stage to draw in the canvas
	
	//////set the velocity
	velBall = 10;
	velPlayer = 10;
	direction = "right";
	
	////create the left player
	leftPlayer = new createjs.Shape();
	leftPlayer.graphics.beginFill("white").drawRect(canvasWidth/2,canvasHeight/2,playerWidth, playerHeight);
	stage.addChild(leftPlayer);
	
	leftPlayer.x = -canvasWidth/2;
	leftPlayer.y = -playerHeight/2;
	
	////create the right player
	rightPlayer = new createjs.Shape();
	rightPlayer.graphics.beginFill("white").drawRect(canvasWidth/2,canvasHeight/2,playerWidth,playerHeight);
	stage.addChild(rightPlayer);
	
	rightPlayer.x = canvasWidth/2-playerWidth;
	rightPlayer.y = -playerHeight/2;
	
	////draw the ball
	ball = new createjs.Shape();
	ball.graphics.beginFill("white").drawCircle(canvasWidth/2,canvasHeight/2,ballRadius);
	stage.addChild(ball);
	alfa = (Math.random() * 60) + 60;
	
	////draw all the child objects
	stage.update();

	////add addEventListener functions
	document.addEventListener("keydown", moveLeftPlayer);
	//stage.on("click", teste);
	setInterval(gameLoop, 30);
	
	////zero the placar
	document.getElementById("placar1").innerHTML = count1;
	document.getElementById("placar2").innerHTML = count2;
	
}

function drawStage() {
	stage.update();
}

////move the player
function moveLeftPlayer(event) {
	if(event.which == 38 && (leftPlayer.y-velPlayer) >= -(canvasHeight/2) ){
		leftPlayer.y -= velPlayer;
	}
	else if(event.which == 40 && (leftPlayer.y+playerHeight+velPlayer) <= (canvasHeight/2)) {
		leftPlayer.y += velPlayer;
	}
	drawStage();
}

////gameloop
function gameLoop() {
	////Move the ball
	velX = velBall*Math.sin(getRad(alfa)); 
	velY = velBall*Math.cos(getRad(alfa));
	ball.x += velX;
	ball.y += velY;

	/////Move the right player
	if(ball.y-ballRadius < rightPlayer.y){
		if((rightPlayer.y-velPlayer) >= -(canvasHeight/2))
			rightPlayer.y -= velPlayer;
	}
	else if(ball.y+ballRadius> rightPlayer.y+playerHeight)
		if((rightPlayer.y+playerHeight+velPlayer) <= (canvasHeight/2))
			rightPlayer.y += velPlayer;

	////check collision with left player
	if((ball.x-ballRadius <= leftPlayer.x+playerWidth) && (ball.y-ballRadius<=leftPlayer.y+playerHeight && ball.y+ballRadius>=leftPlayer.y) && direction == "left")
	{
		distance = ball.y - leftPlayer.y;
		if(distance <= 33){
			alfa = 330-alfa;
		}
		else if(distance < 67) {
			alfa = 360-alfa;
		}
		else {
			alfa = 330-alfa;
		}
		velBall++;
		direction = "right";
	}
	else if((ball.x+ballRadius >= rightPlayer.x) && (ball.y-ballRadius<=rightPlayer.y+playerHeight && ball.y+ballRadius>=rightPlayer.y) && direction == "right")
	{
		distance = ball.y - rightPlayer.y;
		if(distance <= 33){
			alfa = 330-alfa;
		}
		else if(distance < 67) {
			alfa = 360-alfa;
		}
		else {
			alfa = 330-alfa;
		}
		velBall++;
		direction = "left";
	}
	/////check collision with the walls
	if(ball.y+ballRadius >= canvasHeight/2 || ball.y-ballRadius <= -(canvasHeight/2))
	{
		alfa = 180-alfa;
	}
	////check goals
	if(ball.x+ballRadius <= -canvasWidth/2) {
		count1++;
		document.getElementById("placar1").innerHTML = count1;
		reset();
	}
	if(ball.x-ballRadius >= canvasWidth/2+playerWidth) {
		count2++;
		document.getElementById("placar2").innerHTML = count2;	
		reset();
	}
	drawStage();
}

function getRad(deg) {
   var rad = deg * Math.PI/180;
   return rad;
}

function reset() {	
	//////set the velocity
	velBall = 10;
	
	leftPlayer.x = -canvasWidth/2;
	leftPlayer.y = -playerHeight/2;
	
	rightPlayer.x = canvasWidth/2-playerWidth;
	rightPlayer.y = -playerHeight/2;
	
	ball.x = 0;
	ball.y = 0;
	
	alfa = (Math.random() * 60) + 60;
	
	direction = "right";
}
