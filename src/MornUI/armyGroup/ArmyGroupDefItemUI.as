/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ArmyGroupDefItemUI extends View {
		public var nameTxt:Text;
		public var BRTxt:Text;
		public var lvTxt:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/ArmyGroupDefItem");

		}

	}
}