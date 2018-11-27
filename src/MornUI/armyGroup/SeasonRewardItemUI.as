/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class SeasonRewardItemUI extends View {
		public var pNameTxt:Text;
		public var socreTxt:Text;
		public var rankTxt:Text;
		public var icon:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/SeasonRewardItem");

		}

	}
}