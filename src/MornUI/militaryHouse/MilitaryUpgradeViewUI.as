/**Created by the LayaAirIDE,do not modify.*/
package MornUI.militaryHouse {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MilitaryUpgradeViewUI extends View {
		public var closeBtn:Button;
		public var titleTF:Text;
		public var upgradeBtn:Button;
		public var nowLvTF:Text;
		public var nowEffTF:Text;
		public var nextLvTF:Text;
		public var nextEffTF:Text;
		public var numTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("militaryHouse/MilitaryUpgradeView");

		}

	}
}