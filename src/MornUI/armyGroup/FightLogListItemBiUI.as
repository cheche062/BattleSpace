/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class FightLogListItemBiUI extends View {
		public var loseImg:Image;
		public var winImg:Image;
		public var describeTxt:Text;
		public var loseTxt:Text;
		public var timeTxt:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/FightLogListItemBi");

		}

	}
}