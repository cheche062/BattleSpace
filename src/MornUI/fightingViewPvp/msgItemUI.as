/**Created by the LayaAirIDE,do not modify.*/
package MornUI.fightingViewPvp {
	import laya.ui.*;
	import laya.display.*; 
	

	public class msgItemUI extends View {
		public var btn:Button;
		public var iconImg:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("fightingViewPvp/msgItem");

		}

	}
}