/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class CampSoldierItemUI extends View {
		public var icon:Image;
		public var minusBtn:Button;
		public var numTF:Text;
		public var numTF2:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("camp/CampSoldierItem");

		}

	}
}