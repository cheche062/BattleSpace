/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ArmyGroupFightLogViewUI extends View {
		public var closeBtn:Button;
		public var logCtrl:Tab;
		public var fightList:List;
		public var personalList:List;
		public var npcInfo:Box;
		public var npcOver:Box;
		public var lbTips_NPC:Text;
		public var nextOpenTxt:Text;
		public var npcList:List;
		public var titleBar:Box;
		public var npcCtrl:Tab;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/ArmyGroupFightLogView");

		}

	}
}