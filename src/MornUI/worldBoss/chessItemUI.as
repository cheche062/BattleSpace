/**Created by the LayaAirIDE,do not modify.*/
package MornUI.worldBoss {
	import laya.ui.*;
	import laya.display.*; 
	

	public class chessItemUI extends View {
		public var dom_troopsbg:Image;
		public var dom_troopsNum:Label;
		public var dom_name:Label;
		public var dom_blood:ProgressBar;
		public var dom_collecting:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("worldBoss/chessItem");

		}

	}
}