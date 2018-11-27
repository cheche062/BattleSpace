/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GroupChildViewUI extends View {
		public var titleBox:Box;
		public var totalList:List;
		public var ownIcon:Image;
		public var ownName:Text;
		public var gScoreTxt:Text;
		public var ownRank:Text;
		public var noReTxt:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/GroupChildView");

		}

	}
}