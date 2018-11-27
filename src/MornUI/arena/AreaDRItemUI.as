/**Created by the LayaAirIDE,do not modify.*/
package MornUI.arena {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class AreaDRItemUI extends View {
		public var itemBg:Image;
		public var rankTF:Text;
		public var stateIcon:Image;
		public var myRankTips:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("arena/AreaDRItem");

		}

	}
}