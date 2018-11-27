/**Created by the LayaAirIDE,do not modify.*/
package MornUI.arena {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ChallengeItemUI extends View {
		public var heroBg:Image;
		public var frameImg:Image;
		public var pNameTF:Label;
		public var forceBg:Image;
		public var playerForce:Text;
		public var pRankTF:Label;
		public var changeImg:Image;
		public var heroLv:Label;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("arena/ChallengeItem");

		}

	}
}