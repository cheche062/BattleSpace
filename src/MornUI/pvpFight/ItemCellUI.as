/**Created by the LayaAirIDE,do not modify.*/
package MornUI.pvpFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ItemCellUI extends View {
		public var p1:Image;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("pvpFight/ItemCell");

		}

	}
}