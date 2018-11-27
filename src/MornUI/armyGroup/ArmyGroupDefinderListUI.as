/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ArmyGroupDefinderListUI extends View {
		public var NameText:Text;
		public var BRText:Text;
		public var RankList:List;
		public var closeBtn:Button;
		public var bossname:Text;
		public var bossBR:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/ArmyGroupDefinderList");

		}

	}
}