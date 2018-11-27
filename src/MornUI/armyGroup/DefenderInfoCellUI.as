/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class DefenderInfoCellUI extends View {
		public var LvText:Text;
		public var NameText:Text;
		public var BRText:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/DefenderInfoCell");

		}

	}
}