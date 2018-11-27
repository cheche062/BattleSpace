/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingViewPvp {
	import laya.ui.*;
	import laya.display.*; 
	

	public class enemyInfoViewUI extends View {
		public var readyLbl:Label;
		public var notreadyLbl:Label;
		public var nameLbl:Label;
		public var heroFace:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingViewPvp/enemyInfoView");

		}

	}
}