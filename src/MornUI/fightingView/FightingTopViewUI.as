/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingView {
	import laya.ui.*;
	import laya.display.*; 
	

	public class FightingTopViewUI extends View {
		public var turnText:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingView/FightingTopView");

		}

	}
}