/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroupFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ArmyItemUI extends View {
		public var greenBg:Image;
		public var typePic:Image;
		public var addBtn:Button;
		public var pic:Image;
		public var attackFlag:Image;
		public var apBar:ProgressBar;
		public var hpBar:ProgressBar;
		public var rebornBtn:Button;
		public var rebornTime:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroupFight/ArmyItem");

		}

	}
}