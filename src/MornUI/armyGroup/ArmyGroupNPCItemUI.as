/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ArmyGroupNPCItemUI extends View {
		public var imgBg:Image;
		public var npcNTxt:Text;
		public var warTTxt:Text;
		public var planeNTxt:Text;
		public var goBtn:Button;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/ArmyGroupNPCItem");

		}

	}
}