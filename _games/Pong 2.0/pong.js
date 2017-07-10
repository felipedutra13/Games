window.onload = function () {
	var canvas = document.getElementById("myCanvas");
	var context = canvas.getContext("2d");
	
	function Ball(context, x, y){
		this.context = context;
		this.x = x;
		this.y = y;
		this.radius = 5;
		this.velocityX = 10;
		this.velocityY = 10;
		
		this.draw = function () {
			var ctx = this.context;
			ctx.fillStyle = "#ffffff";
			ctx.beginPath();
			ctx.arc(this.x, this.y, this.radius, 0, 2*Math.PI);
			ctx.fill();
		};
		
		this.update = function () {
			////clear the canvas
			var ctx = context;
			ctx.clearRect(0,0,canvas.width, canvas.height);
			////update the position
			ctx.beginPath();
			ctx.arc(this.x+this.velocityX, this.y+this.velocityY, this.radius, 0, 2*Math.PI);
			ctx.fill();
			var ball = this;
			requestAnimationFrame(ball.update);
		};
	}
	
	var ball = new Ball(context, 50, 50);
	ball.draw();
	//var teste = ball.update();
	requestAnimationFrame(ball.update);
}
