package  
{
	import flash.display.MovieClip;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author freedomofkeima
	 */
	public class mcExplosion extends MovieClip 
	{
		
		public function mcExplosion() 
		{
			//Menambahkan Explosion ke Layar
			addEventListener(Event.ADDED_TO_STAGE, onAdd);
		}
		
		private function onAdd(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAdd);
			init();
		}
		
		private function init():void 
		{
			addEventListener(Event.ENTER_FRAME, explosionLoop);
		}
		
		private function explosionLoop(e:Event):void 
		{
			//Jika Frame Saat Ini Adalah Frame Terakhir
			if (this.currentFrame == this.totalFrames)
			{
				//Membuang Clip dari Layar
				parent.removeChild(this);
				//Membuang Listener
				removeEventListener(Event.ENTER_FRAME, explosionLoop);
			}
		}
		
	}

}