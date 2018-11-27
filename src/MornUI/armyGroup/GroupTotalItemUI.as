/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GroupTotalItemUI extends View {
		public var icon:Image;
		public var name:Text;
		public var scoreTxt:Text;
		public var rank:Text;
		public var dom_level:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/GroupTotalItem");

		}

	}
}