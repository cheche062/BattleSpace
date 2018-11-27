/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class FightingRightTopView1UI extends View {
		public var btnBox:Box;
		public var auboBtn:Button;
		public var escapeBtn:Button;
		public var backBtn:Button;
		public var velocityBtn:Button;
		public var skipBtn:Button;
		public var hpBox:Box;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingView/FightingRightTopView1");

		}

	}
}