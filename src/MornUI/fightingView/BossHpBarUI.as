/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class BossHpBarUI extends View {
		public var hpPi:Image;
		public var gaiBg:Image;
		public var bossFace:Image;
		public var hpLbl:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingView/BossHpBar");

		}

	}
}