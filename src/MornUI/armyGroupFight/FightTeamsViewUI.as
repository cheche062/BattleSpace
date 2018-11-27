/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroupFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class FightTeamsViewUI extends View {
		public var closeBtn:Button;
		public var titleTF:Label;
		public var list1:List;
		public var list2:List;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("armyGroupFight/FightTeamsView");

		}

	}
}