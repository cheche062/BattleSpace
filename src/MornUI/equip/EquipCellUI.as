/**Created by the LayaAirIDE,do not modify.*/
package MornUI.equip {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class EquipCellUI extends View {
		public var BgImage:Image;
		public var EquipImage:Image;
		public var ItemBarImage:Image;
		public var EquipLevelText:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("equip/EquipCell");

		}

	}
}