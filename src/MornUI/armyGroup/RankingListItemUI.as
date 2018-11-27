/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class RankingListItemUI extends View {
		public var rank:Text;
		public var name:Text;
		public var group:Text;
		public var kill:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/RankingListItem");

		}

	}
}