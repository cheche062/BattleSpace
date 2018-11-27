/**Created by the LayaAirIDE,do not modify.*/
package MornUI.pvpFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class pvpMainViewUI extends View {
		public var bgImg02:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("pvpFight/pvpMainView");

		}

	}
}