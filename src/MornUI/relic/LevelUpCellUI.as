/**Created by the LayaAirIDE,do not modify.*/
package MornUI.relic {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class LevelUpCellUI extends View {
		public var HeroImage:Image;
		public var NameText:Text;
		public var LevelText:Text;
		public var attackIcon:Image;
		public var defendIcon:Image;
		public var SelectImage:Image;
		public var qPic:Image;
		public var numTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("relic/LevelUpCell");

		}

	}
}