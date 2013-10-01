package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author Anna Rosén TE12D
	 */
	public class Main extends Sprite 
	{
		public var playerName:String = "Annzter" 
		public var monsterName:String = "Skata" 
		public var playerHP: int = 100;
		public var monsterHP: int = 80;
		public var playerDamage: int = 15;
		public var monsterDamage: int = 10;
		public var monsterDamageDealt:int;
		public var playerDamageDealt:int;
		public var text:TextField = new TextField ();
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			text.height = 700; 
			text.width = 300;
			text.border = true; 
			addChild(text);
			for (var i:int = 1; i <= 5; i++) 
			{
				
				text.appendText("|Round " + String(i) + "|\n");
				text.appendText(playerName + "'s health: " + playerHP + "\n");
				text.appendText(monsterName + "'s health: " + monsterHP + "\n"); 
				
				monsterDamageDealt = monsterDamage * Math.random() + monsterDamage; 
				playerDamageDealt = playerDamage * Math.random() + playerDamage; 
				
				text.appendText(playerName + " deals " + String(playerDamageDealt) + " damage to the " + monsterName + "\n"); 
				text.appendText(monsterName + " deals " + String(monsterDamageDealt) + " damage to the " + playerName + "\n\n"); 
				
				playerHP = playerHP - monsterDamageDealt; 
				monsterHP = monsterHP - playerDamageDealt;
			}
			
		}
		
	}
	
}
