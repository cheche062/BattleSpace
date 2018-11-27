/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroupFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class FightTeamsitemUI extends View {
		public var nameTF:Label;
		public var brTF:Label;
		public var clubTF:Label;
		public var lvTF:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("armyGroupFight/FightTeamsitem");

		}

	}
}