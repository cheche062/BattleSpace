/**Created by the LayaAirIDE,do not modify.*/
package MornUI.pvpFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class PvpShopCellUI extends View {
		public var bg:Image;
		public var p1:Image;
		public var buyBtn:Button;
		public var needBox:Box;
		public var errLbl:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("pvpFight/PvpShopCell");

		}

	}
}