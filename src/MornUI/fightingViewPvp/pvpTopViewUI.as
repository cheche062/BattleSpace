/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingViewPvp {
	import laya.ui.*;
	import laya.display.*; 
	

	public class pvpTopViewUI extends View {
		public var timerLbl:Label;
		public var djsTest:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingViewPvp/pvpTopView");

		}

	}
}