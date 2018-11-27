/**Created by the LayaAirIDE,do not modify.*/
package MornUI.equip {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class WashFightingCellUI extends View {
		public var FightNameText:Text;
		public var FightingText:Text;
		public var ArrowImage:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("equip/WashFightingCell");

		}

	}
}