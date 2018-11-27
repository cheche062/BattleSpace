/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroupFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.html.dom.HTMLDivElement;

	public class ArmyFightHelpViewUI extends View {
		public var btnClose:Button;
		public var p1:Panel;
		public var htmlDiv:HTMLDivElement;

		override protected function createChildren():void {
			View.regComponent("HTMLDivElement",HTMLDivElement);
			super.createChildren();
			loadUI("armyGroupFight/ArmyFightHelpView");

		}

	}
}