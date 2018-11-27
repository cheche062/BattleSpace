/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ArmyGroupSpecialItemUI extends View {
		public var plantContainer:Sprite;
		public var greenBg:Image;
		public var cNameTxt:Text;
		public var gNameTxt:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/ArmyGroupSpecialItem");

		}

	}
}