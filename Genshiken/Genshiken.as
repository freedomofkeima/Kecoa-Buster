package  
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.TimerEvent;
	import flash.text.TextField;
	import flash.ui.Mouse;
	import flash.utils.Timer;
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.utils.*;
	
	/**
	 * ...
	 * @author freedomofkeima
	 */
	public class Genshiken extends MovieClip 
	{
		
		private var tEnemyTimer:Timer;
		private var aEnemyArray: Array;
		private var aEnemyHealth : Array;
		private var nType: Array;
		private var Waktu:Number = 1000;
		private var IsBoss:int;
		
		public var ScoreText:TextField;
		public var nScore:Number;
		
		public var menuEnd:mcEndGameScreen;
		
		public var MaxHealth : int = 100;
		public var CurrentHealth : int = 100;
		
		public var myDelay:Timer = new Timer(1000);
		
		
		public var s:Sound = new Sound(new URLRequest("newbgm.mp3"));
		public var s2:Sound = new Sound(new URLRequest("bgm2.mp3"));
		public var tMusicTimer:Timer;
		public var MusicTime:Number;
		
		public function Genshiken() 
		{
			menuEnd.hideScreen();
			//Menyembunyikan Health Bar
			gotoAndStop("1");
			mcHealthBar.visible = false;
			//Inisialisasi Musik Timer
			MusicTime = 0;
			//Membuat Timer Untuk Musik
			tMusicTimer = new Timer(1000);
			//Membuat GameLoop Untuk Musiks
			tMusicTimer.addEventListener(TimerEvent.TIMER, Musicplay);
			//Mulai Timer
			tMusicTimer.start();
			myDelay.addEventListener(TimerEvent.TIMER, playGameAgain);
			myDelay.start();
		}
		
		
		private function playGameAgain(object:Object):void 
		{
			//Menghentikan Delay
			menuEnd.addEventListener("PLAY_AGAIN", playGameAgain);
			menuEnd.hideScreen();
			stage.removeEventListener(TimerEvent.TIMER, playGameAgain);
			myDelay.stop();
			//Membuat GameLoop Untuk Kursor
			stage.addEventListener(MouseEvent.MOUSE_MOVE,follow);
			Mouse.hide();
			cursor.visible = true;
			//Inisialisasi Variabel
			ScoreText.selectable = false;
			aEnemyArray = new Array;
			aEnemyHealth = new Array;
			nType = new Array;
			nScore = 0;
			IsBoss = 1;
			CurrentHealth = 100;
			ScoreText.mouseEnabled = false;
			updateHealthBar();
			updateScoreText();
			//Setup listener - Event Klik Mouse
			stage.addEventListener(MouseEvent.CLICK, clickEnemy);
			//Setup game loop
			stage.addEventListener(Event.ENTER_FRAME, gameLoop);
			//Membuat Objek Timer
			tEnemyTimer = new Timer(Waktu);
			//Timer Listener
			tEnemyTimer.addEventListener(TimerEvent.TIMER, addEnemy);
			//Mulai Timer
			tEnemyTimer.start();
		}
		
		function follow(evt:MouseEvent)
		{
			cursor.x = mouseX;
			cursor.y = mouseY;
		}
		
		private function updateScoreText():void 
		{
			ScoreText.text = "Nilai Anda: " + nScore;			
		}

		private function updateHealthBar():void 
		{
			//Mengatur Bar Health
		    gotoAndStop(String((CurrentHealth / 5) + 1));
			checkGameCondition();
		}

		private function Musicplay(e:TimerEvent):void 
		{
			var channel:SoundChannel = new SoundChannel();
			if (MusicTime > 1700)
			{
			 MusicTime = MusicTime - 1000;
			} else
			{
				channel = s.play();
				MusicTime = s.length;
			}			
		}
		
		private function addEnemy(e:TimerEvent):void 
		{
			//Banyaknya Tipe Kecoa yang Diguanakan
			var nEnemies:Number = randomNumber(1,13); 
			if ((IsBoss == 1) && (nScore >= 5)) //Score pertama bosnya keluar
			{
				nEnemies = 14;
				IsBoss = 3;
			}
			if ((IsBoss == 2) && ((nScore % 100 == 0) || ((nScore-1) % 100 ==0)))
				IsBoss = 1;
			if ( (nEnemies == 1) || (nEnemies == 2) || (nEnemies == 3) || (nEnemies == 4) || (nEnemies == 5) || (nEnemies == 6) || (nEnemies == 7) || (nEnemies == 8) || (nEnemies == 9) )
			{
			var newEnemy:mcEnemy = new mcEnemy();
			aEnemyHealth.push(1);
			nType.push(1);
			//Tambahkan Musuh Baru kedalam Stage
			stage.addChild(newEnemy);
			//Tambahkan Musuh kedalam Array
			aEnemyArray.push(newEnemy);
			} else if ((nEnemies == 10) || (nEnemies == 11) || (nEnemies == 12))
			{
			var newEnemyTwo:mcEnemyTwo =  new mcEnemyTwo();	
			aEnemyHealth.push(3);
			nType.push(2);
			stage.addChild(newEnemyTwo);
			//Tambahkan musuh kedalam Array
			aEnemyArray.push(newEnemyTwo);
			} else if (nEnemies == 13)
			{
			var newEnemyThree:mcEnemyThree =  new mcEnemyThree();	
			aEnemyHealth.push(1);
			nType.push(3);
			stage.addChild(newEnemyThree);
			//Tambahkan musuh kedalam Array
			aEnemyArray.push(newEnemyThree);				
			} else if (nEnemies == 14)
			{
			var newEnemyFour:mcEnemyFour =  new mcEnemyFour();	
			aEnemyHealth.push(30);
			nType.push(4);
			stage.addChild(newEnemyFour);
			//Tambahkan musuh kedalam Array
			aEnemyArray.push(newEnemyFour);	
			}
		}
		
		private function gameLoop(e:Event):void 
		{
			checkEnemyOffScreen();
			checkGameCondition();
		}
	
		private function checkGameCondition():void 
		{
			//Mengecek apakah User telah kalah
			if (CurrentHealth == 0)
			{
				
				//Menghentikan Pergerakan Musuh
				stage.removeEventListener(MouseEvent.CLICK , clickEnemy);
				//Menghentikan Spawning
				tEnemyTimer.stop();
				//Menghilangkan Semua Musuh pada Layar
				var TotalElmt: int = aEnemyArray.length;
				for (var i : int = 0; i < TotalElmt; i++)
				{
					if (nType[i] == 1)
					{
						//Remove the current enemy
						var currentEnemy:mcEnemy = aEnemyArray[i];				
						currentEnemy.destroyEnemy();		
					} else if (nType[i] == 2)
					{
						//Remove the current enemy
						var currentEnemyTwo:mcEnemyTwo = aEnemyArray[i];
						currentEnemyTwo.destroyEnemy();
									
					} else if (nType[i] == 3)
					{
						//Remove the current enemy
						var currentEnemyThree:mcEnemyThree = aEnemyArray[i];
						currentEnemyThree.destroyEnemy();
								
					} else if (nType[i] == 4)
					{
						//Remove the current enemy
						var currentEnemyFour:mcEnemyFour = aEnemyArray[i];
						currentEnemyFour.destroyEnemy();							
					}
						//Remove the current enemy dari Array Musuh
						aEnemyArray.splice(i,1);
						aEnemyHealth.splice(i, 1);
						nType.splice(i, 1);
				}
				if (aEnemyArray.length == 0)
				{
					stage.removeEventListener(Event.ENTER_FRAME, gameLoop);
				}
				//Show End Screen
				menuEnd.showScreen();
				//Kursor
				Mouse.show();
				cursor.visible = false;
				stage.removeEventListener(MouseEvent.MOUSE_MOVE,follow);
				//Menyembunyikan Health Bar
				gotoAndStop(String(1));
				mcHealthBar.visible = false;
			}
		}	
	
		private function checkEnemyOffScreen():void 
		{
			//Mengecek array musuh
			looping : for (var i: int = aEnemyArray.length; i >= 0; i--)
			{
				if (nType[i] == 1)
				{
					var currentEnemy:mcEnemy = aEnemyArray[i];
					if (currentEnemy.y > 600)
					{
						//Buang musuh dari Array
						aEnemyArray.splice(i, 1);
						aEnemyHealth.splice(i, 1);
						nType.splice(i, 1);		
						//Buang musuh 
						currentEnemy.destroyEnemy();
						//Kurangi darah
						if (CurrentHealth >= 10)
					     {
							 CurrentHealth = CurrentHealth - 10;
						 } else
						 {
							 CurrentHealth = 0;
						 }
						 break looping;
					}
				} else if (nType[i] == 2)
				{
					var currentEnemyTwo:mcEnemyTwo = aEnemyArray[i];
					if (currentEnemyTwo.y > 600)
					{
						//Buang musuh dari Array
						aEnemyArray.splice(i, 1);
						aEnemyHealth.splice(i, 1);
						nType.splice(i, 1);		
						//Buang musuh 
						currentEnemyTwo.destroyEnemy();	
						//Kurangi darah
						if (CurrentHealth >= 15)
					     {
							 CurrentHealth = CurrentHealth - 15;
						 } else
						 {
							 CurrentHealth = 0;
						 }
						 break looping;
					}
				} else if (nType[i] == 3)
				{
					var currentEnemyThree:mcEnemyThree = aEnemyArray[i];
					if (currentEnemyThree.y > 600)
					{
						//Buang musuh dari Array
						aEnemyArray.splice(i, 1);
						aEnemyHealth.splice(i, 1);
						nType.splice(i, 1);		
						//Buang musuh 
						currentEnemyThree.destroyEnemy();	
						//Kurangi darah
						
						break looping;

					}
				} else if (nType[i] == 4)
				{
					var currentEnemyFour:mcEnemyFour = aEnemyArray[i];
						//Buang musuh 
					if (currentEnemyFour.y > 600)
					{
						currentEnemyFour.destroyEnemy();	
						aEnemyArray.splice(i, 1);
						aEnemyHealth.splice(i, 1);
						nType.splice(i, 1);						
						//Kurangi darah
						CurrentHealth = 0;	
						break looping;
					}
				}
					//Update darah
					updateHealthBar();		
			}
		}
		
		private function clickEnemy(e:MouseEvent):void 
		{
			var newExplosion:mcExplosion = new mcExplosion();
			//Cek objek yang diklik oleh mouse
			for (var i : int = 0;  i < aEnemyArray.length; i++)
			{
				if (e.target == aEnemyArray[i])
				{	
					//SoundEffect
					var Channel2:SoundChannel = new SoundChannel();
					Channel2 = s2.play();
					//Mengurangi darah musuh
					aEnemyHealth[i] = aEnemyHealth[i] - 1;
					if (nType[i] == 1)
					{
					var currentEnemy:mcEnemy = aEnemyArray[i];
						if (aEnemyHealth[i] == 0)
						{
						//Memberikan efek ledakan
						//Menambahkan explosion ke layar
						stage.addChild(newExplosion);
						//koordinat dari ledakan
						newExplosion.x = currentEnemy.x;
						newExplosion.y = currentEnemy.y;
						//Buang musuh dari Array
						aEnemyArray.splice(i, 1);
						aEnemyHealth.splice(i, 1);
						nType.splice(i, 1);						
						//Buang musuh
						currentEnemy.destroyEnemy();	
						//Menambahkan Nilai
						nScore = nScore + 1;
						}
					} else if (nType[i] == 2)
					{
					var currentEnemyTwo:mcEnemyTwo = aEnemyArray[i];
					if (aEnemyHealth[i] == 0)
						{
						//Memberikan efek ledakan
						//Menambahkan explosion ke layar
						stage.addChild(newExplosion);
						//koordinat dari ledakan
						newExplosion.x = currentEnemyTwo.x;
						newExplosion.y = currentEnemyTwo.y;
						//Buang musuh dari Array
						aEnemyArray.splice(i, 1);
						aEnemyHealth.splice(i, 1);
						nType.splice(i, 1);
						//Buang musuh
						currentEnemyTwo.destroyEnemy();
						//Menambahkan Nilai
						nScore = nScore + 2;
						}
					} else if (nType[i] == 3)
					{
					var currentEnemyThree:mcEnemyThree = aEnemyArray[i];
					if (aEnemyHealth[i] == 0)
						{
						//Memberikan efek ledakan
						//Menambahkan explosion ke layar
						stage.addChild(newExplosion);
						//koordinat dari ledakan
						newExplosion.x = currentEnemyThree.x;
						newExplosion.y = currentEnemyThree.y;
						//Buang musuh dari Array
						aEnemyArray.splice(i, 1);
						aEnemyHealth.splice(i, 1);
						nType.splice(i, 1);
						//Buang musuh
						currentEnemyThree.destroyEnemy();
						//Menambahkan Health
						if ((currentEnemyThree.currentFrame - 1) / 6 < 1)
						{
							if (CurrentHealth > 15)
							{
								 CurrentHealth = CurrentHealth - 15;							
							} else
							{
								CurrentHealth = 0;
								checkGameCondition();
							}
						} else
						{
							if (CurrentHealth < 90)
							{
							    CurrentHealth = CurrentHealth + 10;
							} else
							{
								CurrentHealth = 100;
							}
						}
						updateHealthBar();
						}
					} else if (nType[i] == 4)
					{
						var currentEnemyFour:mcEnemyFour = aEnemyArray[i];
					if (aEnemyHealth[i] == 0)
						{
						//Memberikan efek ledakan
						//Menambahkan explosion ke layar
						stage.addChild(newExplosion);
						//Koordinat dari ledakan
						newExplosion.x = currentEnemyFour.x;
						newExplosion.y = currentEnemyFour.y;
						//Buang musuh dari Array
						aEnemyArray.splice(i, 1);
						aEnemyHealth.splice(i, 1);
						nType.splice(i, 1);
						//Buang musuh
						currentEnemyFour.destroyEnemy();
						//Menambahkan Nilai
						nScore = nScore + 30;
						IsBoss = 2;
						}
					}
								
					//Update score box
					updateScoreText();
					}
				}
		}
		
		function randomNumber(low:Number=0, high:Number=1):Number
		{
			return Math.floor(Math.random() * (1+high-low)) + low;
		}
		
	}

}