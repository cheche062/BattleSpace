/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	

	public class ArmyGroupHelpUI extends View {
		public var btn_close:Button;
		public var dom_panel:Panel;
		public var dom_list:List;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("armyGroup/ArmyGroupHelp");

		}

	}
}