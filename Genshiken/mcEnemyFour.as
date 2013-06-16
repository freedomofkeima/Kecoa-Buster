package  
{
	import flash.display.MovieClip;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author freedomofkeima
	 */
	public class mcEnemyFour extends MovieClip 
	{
		var nSpeed:int;
		
		public function mcEnemyFour() 
		{
			addEventListener(Event.ADDED_TO_STAGE, onAdd);
		}
		
		private function onAdd(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAdd);
			init();
		}
		
		private function init():void 
		{
			//Setup Kecoa
			//Menambahkan Musuh Kedalam Permainan
			setupStartPosition();
		}
		
		private function setupStartPosition():void 
		{
			//Memilih Kecepatan Secara Random
			this.y = -this.height / 2;
			//Mengeset Keluarnya Musuh Secara Random (Posisi)
			var nMinX:int = this.width / 2;
			var nMaxX:int = stage.stageWidth - (this.width / 2);
			this.x = stage.stageWidth / 2;
			//Mengeset Random Flip
			var Flip:Number = randomNumber(1, 2);
			if (Flip == 2) 
			{
				// Flip Horisontal
				scaleX *= -1;
			}
			//Menggerakan Musuh
			startMoving();			
		}
		
		private function startMoving():void 
		{
			addEventListener(Event.ENTER_FRAME, enemyLoop);
		}
		
		private function enemyLoop(e:Event):void 
		{
			if (this.y < 150)
			{
				this.y += 2;
			}  else
			{
				this.y += 0.5;
			}
				this.x = this.x + Math.sin(this.y/20) * 3;
		}

		public function destroyEnemy():void
		{
			//Membuang Musuh
			parent.removeChild(this);
			removeEventListener(Event.ENTER_FRAME, enemyLoop);
		}
		
		function randomNumber(low:Number=0, high:Number=1):Number
		{
			return Math.floor(Math.random() * (1+high-low)) + low;
		}
		
	}

}
